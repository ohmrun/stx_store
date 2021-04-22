package stx.data.store;

@:publicFields typedef StoreDataDef<Ins,Upd,Isd,Idx> = {
  final insert : StoreInsertDef<Ins>;
  final update : StoreUpdateDef<Ins,Upd,Idx>;
  final issued : StoreIssuedDef<Isd,Idx>;
}
interface StoreDataApi<Ins,Upd,Isd,Idx>{
  final insert : StoreInsert<Ins>;
  final update : StoreUpdate<Ins,Upd,Idx>;
  final issued : StoreIssued<Isd,Idx>;
}
@:structInit class StoreDataCls<Ins,Upd,Isd,Idx> implements StoreDataApi<Ins,Upd,Isd,Idx>{
  public function new(insert,update,issued){
    this.insert = insert;
    this.update = update;
    this.issued = issued;
  }
  public final insert : StoreInsert<Ins>;
  public final update : StoreUpdate<Ins,Upd,Idx>;
  public final issued : StoreIssued<Isd,Idx>;
}
@:forward abstract StoreData<Ins,Upd,Isd,Idx>(StoreDataApi<Ins,Upd,Isd,Idx>) from StoreDataApi<Ins,Upd,Isd,Idx> to StoreDataApi<Ins,Upd,Isd,Idx>{
  public function new(self:StoreDataApi<Ins,Upd,Isd,Idx>){
    this = self;
  }
  static public function unto<Ins,Upd,Isd,Idx>(self:StoreData<Ins,Upd,Isd,Idx>){
    return new StoreData(self);
  }
  static public function make<Ins,Upd,Isd,Idx>(insert,update,issued):StoreData<Ins,Upd,Isd,Idx>{
    return unto(({
      insert : insert,
      update : update,
      issued : issued
    }:StoreDataCls<Ins,Upd,Isd,Idx>));
  }
  static public function make0<Ins,Upd,Isd,Idx>(insert_secure:Dyn->Ins,update_lookup:Upd->Idx,update_harden:Upd->Ins,issued_lookup:Isd->Idx,issued_secure:Dyn->Isd){
    return make(insert_secure,tuple2(update_lookup,update_harden),tuple2(issued_lookup,issued_secure));
  }
}
