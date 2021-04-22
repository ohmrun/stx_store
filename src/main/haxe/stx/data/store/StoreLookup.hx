package stx.data.store;

interface StoreLookupApi<T,I>{
  public final lookup : (t:T) -> I;
}

@:publicFields typedef StoreLookupDef<T,I> = {
  final lookup : (t:T) -> I;
}

@:structInit class StoreLookupCls<T,I> implements StoreLookupApi<T,I> {
  public function new(lookup){
    this.lookup = lookup;
  } 
  public final lookup : (t:T) -> I;
}
@:forward abstract StoreLookup<T,I>(StoreLookupCls<T,I>) from StoreLookupCls<T,I> to StoreLookupCls<T,I>{
  
}