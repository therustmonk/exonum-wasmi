(module
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i32 i32 i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (import "env" "args" (func $args (type 0)))
  (import "env" "args_len" (func $args_len (type 1)))
  (import "env" "debug" (func $debug (type 2)))
  (import "env" "get_storage" (func $get_storage (type 3)))
  (import "env" "return_data" (func $return_data (type 2)))
  (import "env" "set_storage" (func $set_storage (type 3)))
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h2f87e8dc3e16061bE (type 2) (param i32 i32)
    (local i32 i32)
    (set_local 3
      (current_memory))
    (drop
      (grow_memory
        (tee_local 2
          (i32.shr_u
            (i32.add
              (i32.shl
                (get_local 1)
                (i32.const 2))
              (i32.const 65543))
            (i32.const 16)))))
    (i32.store offset=4
      (tee_local 1
        (i32.shl
          (get_local 3)
          (i32.const 16)))
      (i32.const 0))
    (i32.store
      (get_local 1)
      (i32.add
        (i32.shl
          (get_local 2)
          (i32.const 16))
        (i32.const -8)))
    (i32.store offset=4
      (get_local 0)
      (get_local 1))
    (i32.store
      (get_local 0)
      (i32.const 0)))
  (func $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17hd00ce41e0de90bb5E (type 3) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 6
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.lt_u
            (get_local 3)
            (i32.const 5)))
        (i64.store align=4
          (get_local 0)
          (i64.const 4294967297))
        (i32.store
          (i32.add
            (get_local 0)
            (i32.const 8))
          (i32.const 16))
        (i32.store
          (i32.add
            (get_local 0)
            (i32.const 12))
          (i32.const 50))
        (br 1 (;@1;)))
      (block  ;; label = @3
        (block  ;; label = @4
          (block  ;; label = @5
            (block  ;; label = @6
              (block  ;; label = @7
                (block  ;; label = @8
                  (block  ;; label = @9
                    (br_if 0 (;@9;)
                      (i32.eqz
                        (get_local 2)))
                    (set_local 4
                      (i32.shr_u
                        (i32.add
                          (get_local 2)
                          (i32.const 3))
                        (i32.const 2)))
                    (br_if 1 (;@8;)
                      (i32.eqz
                        (i32.load
                          (get_local 1))))
                    (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
                      (i32.add
                        (get_local 6)
                        (i32.const 8))
                      (get_local 4)
                      (get_local 1))
                    (br_if 2 (;@7;)
                      (i32.eqz
                        (i32.load offset=8
                          (get_local 6))))
                    (call $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h2f87e8dc3e16061bE
                      (i32.add
                        (get_local 6)
                        (i32.const 8))
                      (get_local 4))
                    (br_if 3 (;@6;)
                      (i32.ne
                        (i32.load offset=8
                          (get_local 6))
                        (i32.const 1)))
                    (i32.store
                      (get_local 6)
                      (i32.const 1))
                    (br 6 (;@3;)))
                  (i64.store align=4
                    (get_local 0)
                    (i64.const 4294967296))
                  (br 6 (;@3;)))
                (call $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h2f87e8dc3e16061bE
                  (i32.add
                    (get_local 6)
                    (i32.const 8))
                  (get_local 4))
                (br_if 2 (;@7;)
                  (i32.ne
                    (i32.load offset=8
                      (get_local 6))
                    (i32.const 1)))
                (i32.store
                  (get_local 6)
                  (i32.const 1))
                (br 4 (;@5;)))
              (i32.store offset=4
                (get_local 6)
                (i32.load offset=12
                  (get_local 6)))
              (i32.store
                (get_local 6)
                (i32.const 0))
              (br 3 (;@6;)))
            (i32.store offset=4
              (tee_local 5
                (i32.load offset=12
                  (get_local 6)))
              (i32.load
                (get_local 1)))
            (i32.store
              (get_local 1)
              (get_local 5))
            (br 1 (;@8;)))
          (i32.store offset=4
            (tee_local 5
              (i32.load offset=12
                (get_local 6)))
            (i32.load
              (get_local 1)))
          (i32.store
            (get_local 1)
            (get_local 5)))
        (call $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E
          (get_local 6)
          (get_local 4)
          (get_local 1)))
      (set_local 1
        (i32.const 1))
      (block  ;; label = @10
        (block  ;; label = @11
          (br_if 0 (;@11;)
            (i32.ne
              (i32.load
                (get_local 6))
              (i32.const 1)))
          (i32.store offset=4
            (get_local 0)
            (i32.const 0))
          (i32.store
            (i32.add
              (get_local 0)
              (i32.const 8))
            (get_local 2))
          (set_local 2
            (i32.const 2))
          (br 1 (;@10;)))
        (set_local 1
          (i32.const 0))
        (set_local 3
          (i32.load offset=4
            (get_local 6)))
        (set_local 2
          (i32.const 0)))
      (i32.store
        (get_local 0)
        (get_local 1))
      (i32.store
        (i32.add
          (i32.add
            (get_local 0)
            (i32.shl
              (get_local 2)
              (i32.const 2)))
          (i32.const 4))
        (get_local 3)))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 6)
        (i32.const 16))))
  (func $_ZN9wee_alloc15alloc_first_fit17hac3fdf57a90d6055E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    (set_local 3
      (i32.shl
        (get_local 1)
        (i32.const 2)))
    (block  ;; label = @1
      (block  ;; label = @2
        (loop  ;; label = @3
          (br_if 1 (;@2;)
            (i32.eqz
              (tee_local 1
                (i32.load
                  (get_local 2)))))
          (br_if 2 (;@1;)
            (i32.ge_u
              (tee_local 4
                (i32.load
                  (get_local 1)))
              (get_local 3)))
          (set_local 2
            (i32.add
              (get_local 1)
              (i32.const 4)))
          (br 0 (;@3;)))
        (unreachable))
      (i32.store
        (get_local 0)
        (i32.const 1))
      (return))
    (set_local 5
      (i32.add
        (get_local 1)
        (i32.const 8)))
    (block  ;; label = @4
      (block  ;; label = @5
        (br_if 0 (;@5;)
          (i32.gt_u
            (tee_local 6
              (i32.sub
                (get_local 4)
                (get_local 3)))
            (i32.const 71)))
        (i32.store
          (get_local 2)
          (i32.load offset=4
            (get_local 1)))
        (br 1 (;@4;)))
      (i32.store offset=4
        (tee_local 4
          (i32.add
            (get_local 5)
            (get_local 3)))
        (i32.const 0))
      (i32.store
        (get_local 4)
        (i32.add
          (get_local 6)
          (i32.const -8)))
      (i32.store
        (get_local 1)
        (get_local 3))
      (i32.store
        (get_local 2)
        (get_local 4))
      (i32.store offset=4
        (get_local 4)
        (i32.load offset=4
          (get_local 1))))
    (i32.store offset=4
      (get_local 0)
      (get_local 5))
    (i32.store
      (get_local 0)
      (i32.const 0)))
  (func $memcpy (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    (set_local 3
      (i32.const 0))
    (block  ;; label = @1
      (loop  ;; label = @2
        (br_if 1 (;@1;)
          (i32.eq
            (get_local 2)
            (get_local 3)))
        (i32.store8
          (i32.add
            (get_local 0)
            (get_local 3))
          (i32.load8_u
            (i32.add
              (get_local 1)
              (get_local 3))))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br 0 (;@2;)))
      (unreachable))
    (get_local 0))
  (func $memmove (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (br_if 0 (;@2;)
          (i32.ge_u
            (get_local 1)
            (get_local 0)))
        (loop  ;; label = @3
          (br_if 2 (;@1;)
            (i32.eqz
              (get_local 2)))
          (i32.store8
            (i32.add
              (i32.add
                (get_local 0)
                (get_local 2))
              (i32.const -1))
            (i32.load8_u
              (i32.add
                (i32.add
                  (get_local 1)
                  (get_local 2))
                (i32.const -1))))
          (set_local 2
            (i32.add
              (get_local 2)
              (i32.const -1)))
          (br 0 (;@3;)))
        (unreachable))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @4
        (br_if 1 (;@3;)
          (i32.eqz
            (get_local 2)))
        (i32.store8
          (get_local 3)
          (i32.load8_u
            (get_local 1)))
        (set_local 2
          (i32.add
            (get_local 2)
            (i32.const -1)))
        (set_local 1
          (i32.add
            (get_local 1)
            (i32.const 1)))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br 0 (;@4;)))
      (unreachable))
    (get_local 0))
  (func $memset (type 7) (param i32 i32 i32) (result i32)
    (local i32)
    (set_local 3
      (i32.const 0))
    (block  ;; label = @1
      (loop  ;; label = @2
        (br_if 1 (;@1;)
          (i32.eq
            (get_local 2)
            (get_local 3)))
        (i32.store8
          (i32.add
            (get_local 0)
            (get_local 3))
          (get_local 1))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br 0 (;@2;)))
      (unreachable))
    (get_local 0))
  (func $memcmp (type 7) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    (set_local 6
      (i32.const 0))
    (set_local 5
      (i32.const 0))
    (block  ;; label = @1
      (loop  ;; label = @2
        (br_if 1 (;@1;)
          (i32.ge_u
            (get_local 5)
            (get_local 2)))
        (set_local 3
          (i32.add
            (get_local 1)
            (get_local 5)))
        (set_local 4
          (i32.add
            (get_local 0)
            (get_local 5)))
        (set_local 5
          (i32.add
            (get_local 5)
            (i32.const 1)))
        (br_if 0 (;@2;)
          (i32.eq
            (tee_local 4
              (i32.load8_u
                (get_local 4)))
            (tee_local 3
              (i32.load8_u
                (get_local 3))))))
      (set_local 6
        (i32.sub
          (get_local 4)
          (get_local 3))))
    (get_local 6))
  (func $_ZN4core9panicking5panic17h388b19995485ab52E (type 0) (param i32)
    (local i32 i32 i32 i64)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 3
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 32))))
    (set_local 1
      (i32.load
        (i32.add
          (get_local 0)
          (i32.const 12))))
    (set_local 2
      (i32.load offset=8
        (get_local 0)))
    (set_local 4
      (i64.load align=4
        (get_local 0)))
    (i32.store
      (i32.add
        (get_local 3)
        (i32.const 20))
      (i32.const 0))
    (i64.store offset=24
      (get_local 3)
      (get_local 4))
    (i32.store offset=4
      (get_local 3)
      (i32.const 1))
    (i32.store offset=8
      (get_local 3)
      (i32.const 0))
    (i32.store offset=16
      (get_local 3)
      (i32.const 68))
    (i32.store
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 24)))
    (call $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E
      (get_local 3)
      (get_local 2)
      (get_local 1))
    (unreachable))
  (func $_ZN4core9panicking9panic_fmt17h8d2a1d48b93388a4E (type 6) (param i32 i32 i32)
    (unreachable)
    (unreachable))
  (func $_ZN11wasm_kernel3ext4args17h32a3f2b2d636a49eE (type 0) (param i32)
    (local i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 4
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11allocate_in17haf0ba41a82656529E
      (i32.add
        (get_local 4)
        (i32.const 8))
      (tee_local 1
        (call $args_len))
      (i32.const 1))
    (set_local 2
      (i32.load offset=12
        (get_local 4)))
    (call $args
      (tee_local 3
        (i32.load offset=8
          (get_local 4))))
    (i32.store offset=4
      (get_local 0)
      (get_local 2))
    (i32.store
      (get_local 0)
      (get_local 3))
    (i32.store offset=8
      (get_local 0)
      (get_local 1))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 4)
        (i32.const 16))))
  (func $_ZN11wasm_kernel3ext12wrap_closure7wrapper17hf46fd30b5b938a9dE (type 5) (param i32 i32) (result i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 4
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (set_local 2
      (i32.load align=1
        (get_local 0)))
    (i32.store align=1
      (get_local 0)
      (i32.const 0))
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (call $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11allocate_in17haf0ba41a82656529E
        (i32.add
          (get_local 4)
          (i32.const 8))
        (get_local 1)
        (i32.const 0))
      (set_local 0
        (i32.load offset=8
          (get_local 4)))
      (set_local 3
        (i32.load offset=12
          (get_local 4)))
      (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
        (get_local 2))
      (i32.store offset=4
        (get_local 2)
        (get_local 3))
      (i32.store
        (get_local 2)
        (get_local 0))
      (i32.store offset=8
        (get_local 2)
        (get_local 1))
      (i32.store offset=4
        (i32.const 0)
        (i32.add
          (get_local 4)
          (i32.const 16)))
      (return
        (get_local 0)))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 68))
    (unreachable))
  (func $rust_begin_unwind (type 3) (param i32 i32 i32 i32)
    (unreachable)
    (unreachable))
  (func $test_print_args (type 4)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 0
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN11wasm_kernel3ext4args17h32a3f2b2d636a49eE
      (get_local 0))
    (call $debug
      (i32.const 168)
      (i32.const 5))
    (call $debug
      (i32.load
        (get_local 0))
      (i32.load offset=8
        (get_local 0)))
    (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
      (get_local 0))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 0)
        (i32.const 16))))
  (func $test_return_args (type 4)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 0
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN11wasm_kernel3ext4args17h32a3f2b2d636a49eE
      (get_local 0))
    (call $return_data
      (i32.load
        (get_local 0))
      (i32.load offset=8
        (get_local 0)))
    (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
      (get_local 0))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 0)
        (i32.const 16))))
  (func $test_set_storage (type 4)
    (local i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 0
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 16))))
    (call $_ZN11wasm_kernel3ext4args17h32a3f2b2d636a49eE
      (get_local 0))
    (call $set_storage
      (i32.load
        (get_local 0))
      (i32.load offset=8
        (get_local 0))
      (i32.const 176)
      (i32.const 13))
    (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
      (get_local 0))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 0)
        (i32.const 16))))
  (func $test_get_storage (type 4)
    (local i32 i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 3
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 64))))
    (call $_ZN11wasm_kernel3ext4args17h32a3f2b2d636a49eE
      (get_local 3))
    (set_local 0
      (i32.load offset=8
        (get_local 3)))
    (set_local 1
      (i32.load
        (get_local 3)))
    (i32.store offset=40
      (get_local 3)
      (i32.const 0))
    (i64.store offset=32
      (get_local 3)
      (i64.const 1))
    (i32.store offset=48
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 32)))
    (call $get_storage
      (get_local 1)
      (get_local 0)
      (i32.const 1)
      (i32.add
        (get_local 3)
        (i32.const 48)))
    (i32.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 48))
        (i32.const 8))
      (tee_local 0
        (i32.load offset=40
          (get_local 3))))
    (i32.store
      (tee_local 1
        (i32.add
          (i32.add
            (get_local 3)
            (i32.const 16))
          (i32.const 8)))
      (get_local 0))
    (i32.store offset=48
      (get_local 3)
      (tee_local 0
        (i32.load offset=32
          (get_local 3))))
    (i32.store offset=52
      (get_local 3)
      (tee_local 2
        (i32.load offset=36
          (get_local 3))))
    (i32.store offset=20
      (get_local 3)
      (get_local 2))
    (i32.store offset=16
      (get_local 3)
      (get_local 0))
    (call $return_data
      (i32.load offset=16
        (get_local 3))
      (i32.load
        (get_local 1)))
    (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
      (i32.add
        (get_local 3)
        (i32.const 16)))
    (call $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E
      (get_local 3))
    (i32.store offset=4
      (i32.const 0)
      (i32.add
        (get_local 3)
        (i32.const 64))))
  (func $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11allocate_in17haf0ba41a82656529E (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    (i32.store offset=4
      (i32.const 0)
      (tee_local 5
        (i32.sub
          (i32.load offset=4
            (i32.const 0))
          (i32.const 48))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.le_s
              (get_local 1)
              (i32.const -1)))
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (br_if 0 (;@6;)
                  (i32.eqz
                    (get_local 1)))
                (call $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17h293f5a762b27815eE
                  (i32.add
                    (get_local 5)
                    (i32.const 8))
                  (i32.const 1)
                  (get_local 1)
                  (i32.const 1))
                (set_local 4
                  (i32.load offset=12
                    (get_local 5)))
                (set_local 3
                  (i32.load offset=8
                    (get_local 5)))
                (br_if 1 (;@5;)
                  (i32.eqz
                    (get_local 2)))
                (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17hd00ce41e0de90bb5E
                  (i32.add
                    (get_local 5)
                    (i32.const 16))
                  (i32.const 164)
                  (get_local 3)
                  (get_local 4))
                (br_if 5 (;@1;)
                  (i32.load offset=16
                    (get_local 5)))
                (br_if 2 (;@4;)
                  (call $memset
                    (tee_local 2
                      (i32.load offset=20
                        (get_local 5)))
                    (i32.const 0)
                    (get_local 3)))
                (br 5 (;@1;)))
              (set_local 2
                (i32.const 1))
              (br 1 (;@5;)))
            (call $_ZN78_$LT$$RF$$u27$a$u20$wee_alloc..WeeAlloc$u20$as$u20$alloc..allocator..Alloc$GT$5alloc17hd00ce41e0de90bb5E
              (i32.add
                (get_local 5)
                (i32.const 16))
              (i32.const 164)
              (get_local 3)
              (get_local 4))
            (br_if 2 (;@4;)
              (i32.eq
                (i32.load offset=16
                  (get_local 5))
                (i32.const 1)))
            (br_if 3 (;@3;)
              (i32.eqz
                (tee_local 2
                  (i32.load offset=20
                    (get_local 5)))))
            (set_local 2
              (select
                (get_local 2)
                (get_local 5)
                (get_local 2))))
          (i32.store offset=4
            (get_local 0)
            (get_local 1))
          (i32.store
            (get_local 0)
            (get_local 2))
          (i32.store offset=4
            (i32.const 0)
            (i32.add
              (get_local 5)
              (i32.const 48)))
          (return))
        (call $_ZN4core9panicking5panic17h388b19995485ab52E
          (i32.const 192))
        (unreachable))
      (i32.store
        (i32.add
          (get_local 5)
          (i32.const 40))
        (i32.load
          (i32.add
            (get_local 5)
            (i32.const 28))))
      (i64.store offset=32
        (get_local 5)
        (i64.load offset=20 align=4
          (get_local 5))))
    (unreachable)
    (unreachable))
  (func $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17h293f5a762b27815eE (type 3) (param i32 i32 i32 i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.ne
          (get_local 1)
          (i32.const 1)))
      (i32.store offset=4
        (get_local 0)
        (get_local 3))
      (i32.store
        (get_local 0)
        (get_local 2))
      (return))
    (call $_ZN4core9panicking5panic17h388b19995485ab52E
      (i32.const 216))
    (unreachable))
  (func $_ZN82_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdf87c55f12529130E (type 0) (param i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (i32.load offset=4
            (get_local 0))))
      (i32.store
        (i32.add
          (tee_local 0
            (i32.load
              (get_local 0)))
          (i32.const -4))
        (i32.load offset=164
          (i32.const 0)))
      (i32.store offset=164
        (i32.const 0)
        (i32.add
          (get_local 0)
          (i32.const -8)))))
  (func $__wasm_nullptr (type 4)
    (unreachable))
  (table (;0;) 2 2 anyfunc)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "memcpy" (func $memcpy))
  (export "memmove" (func $memmove))
  (export "memset" (func $memset))
  (export "memcmp" (func $memcmp))
  (export "rust_begin_unwind" (func $rust_begin_unwind))
  (export "test_print_args" (func $test_print_args))
  (export "test_return_args" (func $test_return_args))
  (export "test_set_storage" (func $test_set_storage))
  (export "test_get_storage" (func $test_get_storage))
  (elem (i32.const 0) $__wasm_nullptr $_ZN11wasm_kernel3ext12wrap_closure7wrapper17hf46fd30b5b938a9dE)
  (data (i32.const 4) "\80\01\10\00")
  (data (i32.const 16) "wee_alloc cannot align to more than word alignment")
  (data (i32.const 68) "`\00\00\00+\00\00\00\90\00\00\00\11\00\00\00O\01\00\00\15\00\00\00")
  (data (i32.const 96) "called `Option::unwrap()` on a `None` value")
  (data (i32.const 144) "libcore/option.rs")
  (data (i32.const 164) "\00\00\00\00")
  (data (i32.const 168) "args!")
  (data (i32.const 176) "you found me!")
  (data (i32.const 192) "@\01\00\00\11\00\00\00`\01\00\00\13\00\00\00\ca\02\00\00\09\00\00\00")
  (data (i32.const 216) "\f0\00\00\00+\00\00\00 \01\00\00\11\00\00\00O\01\00\00\15\00\00\00")
  (data (i32.const 240) "called `Option::unwrap()` on a `None` value")
  (data (i32.const 288) "libcore/option.rs")
  (data (i32.const 320) "capacity overflow")
  (data (i32.const 352) "liballoc/raw_vec.rs"))
