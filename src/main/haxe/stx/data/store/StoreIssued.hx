package stx.data.store;

typedef StoreIssuedDef<Issued_T,Index_T> = RepoLookupDef<Issued_T,Index_T> & {
  public final secure : (dyn:Dyn) -> Issued_T;
}
interface StoreIssuedApi<Issued_T,Index_T> extends RepoLookupApi<Issued_T,Index_T>{
  public final secure : (dyn:Dyn) -> Issued_T;
}
@:structInit class StoreIssuedCls<Issued_T,Index_T> implements StoreIssuedApi<Issued_T,Index_T> extends RepoLookup<Issued_T,Index_T>{
  public function new(lookup,secure){
    super(lookup);
    this.secure = secure;
  }
  public final secure : (dyn:Dyn) -> Issued_T;
} 
@:forward abstract StoreIssued<Issued_T,Index_T>(StoreIssuedCls<Issued_T,Index_T>) from StoreIssuedCls<Issued_T,Index_T> to StoreIssuedCls<Issued_T,Index_T>{
  @:from static public function fromTup2<Issued_T,Index_T>(self:Tup2<Issued_T->Index_T,Dyn->Issued_T>):StoreIssued<Issued_T,Index_T>{
    return switch(self) {
      case tuple2(l,r)  : new StoreIssuedCls(l,r);
    }
  }
}