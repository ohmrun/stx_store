package stx.data.store;

interface StoreApi<Ins,Upd,Isd,Idx,Grm,Err>{
  
  public function insert(v:Ins):Pledge<Isd,RepoFailure<Err>>;
  public function insert_all(arr:Array<Ins>):Pledge<Array<Isd>,RepoFailure<Err>>;

  public function resert(test:Grm,value:Ins):Pledge<Couple<Bool,Isd>,RepoFailure<Err>>;

  public function lookup_one(idx:Idx):Pledge<Option<Isd>,RepoFailure<Err>>;
  public function lookup_all(?arr:Array<Idx>):Pledge<Array<Isd>,RepoFailure<Err>>;

  public function locate_one(v:Grm):Pledge<Option<Isd>,RepoFailure<Err>>;
  
  public function delete(id:Idx):Alert<VGFailure>;
  public function patch(data:Upd):Pledge<Option<Isd>,RepoFailure<Err>>;
  
  public function upsert_one(data:Upd):Pledge<Isd,RepoFailure<Err>>;
  public function upsert_all(data:Array<Upd>):Pledge<Array<Isd>,RepoFailure<Err>>;

}