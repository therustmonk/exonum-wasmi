(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func))
  (import "env" "debug" (func $debug (type 0)))
  (func $memcpy (type 1) (param i32 i32 i32) (result i32)
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
  (func $memmove (type 1) (param i32 i32 i32) (result i32)
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
  (func $memset (type 1) (param i32 i32 i32) (result i32)
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
  (func $memcmp (type 1) (param i32 i32 i32) (result i32)
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
  (func $rust_begin_unwind (type 2) (param i32 i32 i32 i32)
    (unreachable)
    (unreachable))
  (func $execute_transaction (type 3)
    (call $debug
      (i32.const 12)
      (i32.const 12)))
  (func $query_state (type 3))
  (table (;0;) 0 anyfunc)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "memcpy" (func $memcpy))
  (export "memmove" (func $memmove))
  (export "memset" (func $memset))
  (export "memcmp" (func $memcmp))
  (export "rust_begin_unwind" (func $rust_begin_unwind))
  (export "execute_transaction" (func $execute_transaction))
  (export "query_state" (func $query_state))
  (data (i32.const 4) " \00\10\00")
  (data (i32.const 12) "hello world!"))
