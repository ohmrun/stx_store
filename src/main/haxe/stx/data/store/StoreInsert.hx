package stx.data.store;

typedef StoreInsertDef<Ins> = {
  public final secure : (dyn:Dyn) -> Ins;
}
interface StoreInsertApi<Ins>{
  public final secure : (dyn:Dyn) -> Ins;
}
@:structInit class StoreInsertCls<Ins>{
  public function new(secure){
    this.secure = secure;
  }
  public final secure : (dyn:Dyn) -> Ins;
}
@:forward abstract StoreInsert<Ins>(StoreInsertCls<Ins>) from StoreInsertCls<Ins> to StoreInsertCls<Ins>{
  @:from static public function fromFn<Ins>(fn:Dyn->Ins):StoreInsert<Ins>{
    return new StoreInsertCls(fn);
  }
}