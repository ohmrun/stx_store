package stx.data;

typedef StoreUpdateDef<Insert_T,Update_T,Index_T> = RepoLookupDef<Update_T,Index_T> & {
  public final harden : (issued:Update_T) -> Insert_T;
}
interface StoreUpdateApi<Insert_T,Update_T,Index_T> extends RepoLookupApi<Update_T,Index_T>{
  public final harden : (issued:Update_T) -> Insert_T;
}
@:structInit class StoreUpdateCls<Insert_T,Update_T,Index_T> implements StoreUpdateApi<Insert_T,Update_T,Index_T> extends RepoLookup<Update_T,Index_T>{
  public function new(lookup,harden){
    super(lookup);
    this.harden = harden;
  }
  public final harden : (issued:Update_T) -> Insert_T;
}
@:forward abstract StoreUpdate<Insert_T,Update_T,Index_T>(StoreUpdateCls<Insert_T,Update_T,Index_T>) from StoreUpdateCls<Insert_T,Update_T,Index_T> to StoreUpdateCls<Insert_T,Update_T,Index_T>{
  @:from static public function fromTup2<Insert_T,Update_T,Index_T>(self:Tup2<Update_T->Index_T,Update_T->Insert_T>):StoreUpdate<Insert_T,Update_T,Index_T>{
    return switch(self) {
      case tuple2(l,r)  : new StoreUpdateCls(l,r);
    }
  }
}

