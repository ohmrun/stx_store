package stx.data;

typedef StoreApi<Ins,Upd,Isd,Idx,Grm,Err>                           = stx.data.store.StoreApi<Ins,Upd,Isd,Idx,Grm,Err>;

typedef StoreData<Ins,Upd,Isd,Idx>                                  = stx.data.store.StoreData<Ins,Upd,Isd,Idx>;
typedef StoreDataCls<Ins,Upd,Isd,Idx>                               = stx.data.store.StoreData.StoreDataCls<Ins,Upd,Isd,Idx>;

typedef StoreLookup<T,I>                                            = stx.data.store.StoreLookup.StoreLookup<T,I>; 
typedef StoreLookupDef<T,I>                                         = stx.data.store.StoreLookup.StoreLookupDef<T,I>;
typedef StoreLookupApi<T,I>                                         = stx.data.store.StoreLookup.StoreLookupApi<T,I>; 
typedef StoreLookupCls<T,I>                                         = stx.data.store.StoreLookup.StoreLookupCls<T,I>; 

typedef StoreInsert<Ins>                                            = stx.data.store.StoreInsert.StoreInsert<Ins>; 
typedef StoreInsertDef<Ins>                                         = stx.data.store.StoreInsert.StoreInsertDef<Ins>;
typedef StoreInsertApi<Ins>                                         = stx.data.store.StoreInsert.StoreInsertApi<Ins>; 
typedef StoreInsertCls<Ins>                                         = stx.data.store.StoreInsert.StoreInsertCls<Ins>; 


typedef StoreUpdate<Ins,Upd,Idx>                                    = stx.data.store.StoreUpdate.StoreUpdate<Ins,Upd,Idx>; 
typedef StoreUpdateDef<Ins,Upd,Idx>                                 = stx.data.store.StoreUpdate.StoreUpdateDef<Ins,Upd,Idx>;
typedef StoreUpdateApi<Ins,Upd,Idx>                                 = stx.data.store.StoreUpdate.StoreUpdateApi<Ins,Upd,Idx>; 
typedef StoreUpdateCls<Ins,Upd,Idx>                                 = stx.data.store.StoreUpdate.StoreUpdateCls<Ins,Upd,Idx>; 


typedef StoreIssued<T,I>                                            = stx.data.store.StoreIssued.StoreIssued<T,I>; 
typedef StoreIssuedDef<T,I>                                         = stx.data.store.StoreIssued.StoreIssuedDef<T,I>;
typedef StoreIssuedApi<T,I>                                         = stx.data.store.StoreIssued.StoreIssuedApi<T,I>; 
typedef StoreIssuedCls<T,I>                                         = stx.data.store.StoreIssued.StoreIssuedCls<T,I>; 
