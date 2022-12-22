package stx.data.store;

/**
  Ins -> Insert
  Upd -> Update
  Isd -> Issued
  Idx -> Primary Index 

  Grm -> Search grammar
  Err -> Error
**/
interface StoreApi<Ins,Upd,Isd,Idx,Grm,Err>{
  
  public function insert(v:Ins):Pledge<Isd,StoreFailure<Err>>;
  public function insert_all(arr:Array<Ins>):Pledge<Array<Isd>,StoreFailure<Err>>;

  /**
    Inserts only if the test returns nothing
  **/
  public function resert(test:Grm,value:Ins):Pledge<Couple<Bool,Isd>,StoreFailure<Err>>;

  public function lookup_one(idx:Idx):Pledge<Option<Isd>,StoreFailure<Err>>;
  public function lookup_all(?arr:Array<Idx>):Pledge<Array<Isd>,StoreFailure<Err>>;

  public function locate_one(v:Grm):Pledge<Option<Isd>,StoreFailure<Err>>;
  public function search(v:Grm):Pledge<Array<Isd>,StoreFailure<Err>>;

  public function delete(id:Idx):Alert<Err>;
  public function patch(data:Upd):Pledge<Option<Isd>,StoreFailure<Err>>;
  
  public function upsert_one(data:Upd):Pledge<Isd,StoreFailure<Err>>;
  public function upsert_all(data:Array<Upd>):Pledge<Array<Isd>,StoreFailure<Err>>;

}