package stx.data.store;

typedef StoreIssuedDef<Isd,Idx> = StoreLookupDef<Isd,Idx> & {
  public final secure : (dyn:Dyn) -> Isd;
}
interface StoreIssuedApi<Isd,Idx> extends StoreLookupApi<Isd,Idx>{
  public final secure : (dyn:Dyn) -> Isd;
}
@:structInit class StoreIssuedCls<Isd,Idx> implements StoreIssuedApi<Isd,Idx> extends StoreLookupCls<Isd,Idx>{
  public function new(lookup,secure){
    super(lookup);
    this.secure = secure;
  }
  public final secure : (dyn:Dyn) -> Isd;
} 
@:forward abstract StoreIssued<Isd,Idx>(StoreIssuedCls<Isd,Idx>) from StoreIssuedCls<Isd,Idx> to StoreIssuedCls<Isd,Idx>{
  @:from static public function fromTup2<Isd,Idx>(self:Tup2<Isd->Idx,Dyn->Isd>):StoreIssued<Isd,Idx>{
    return switch(self) {
      case tuple2(l,r)  : new StoreIssuedCls(l,r);
    }
  }
}