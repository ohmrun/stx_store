package stx.data.store;

typedef StoreUpdateDef<Ind,Upd,Idx> = StoreLookupDef<Upd,Idx> & {
  public final harden : (issued:Upd) -> Ind;
}
interface StoreUpdateApi<Ind,Upd,Idx> extends StoreLookupApi<Upd,Idx>{
  public final harden : (issued:Upd) -> Ind;
}
@:structInit class StoreUpdateCls<Ind,Upd,Idx> implements StoreUpdateApi<Ind,Upd,Idx> extends StoreLookupCls<Upd,Idx>{
  public function new(lookup,harden){
    super(lookup);
    this.harden = harden;
  }
  public final harden : (issued:Upd) -> Ind;
}
@:forward abstract StoreUpdate<Ind,Upd,Idx>(StoreUpdateCls<Ind,Upd,Idx>) from StoreUpdateCls<Ind,Upd,Idx> to StoreUpdateCls<Ind,Upd,Idx>{
  @:from static public function fromTup2<Ind,Upd,Idx>(self:Tup2<Upd->Idx,Upd->Ind>):StoreUpdate<Ind,Upd,Idx>{
    return switch(self) {
      case tuple2(l,r)  : new StoreUpdateCls(l,r);
    }
  }
}
