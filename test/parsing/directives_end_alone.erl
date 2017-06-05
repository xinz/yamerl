-module('directives_end_alone').

-include_lib("eunit/include/eunit.hrl").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        string,
        [],
        <<>>,
        3,
        true,
        [],
        0,
        4,
        1,
        4,
        false,
        1,
        4,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        6,
        5,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,1,4},
          {yamerl_doc_end,1,4},
          {yamerl_scalar,1,4,
            {yamerl_tag,1,4,{non_specific,"?"}},
            flow,plain,""},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:string("---")
    ).
