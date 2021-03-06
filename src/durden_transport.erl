%% 
%% This file is a part of Durden released under the MIT licence.
%% See LICENCE file for more infromation
%% 

-module(durden_transport).

-callback can_handle( 
	Handler :: atom(), 
	Req :: term()
) -> 
	{boolean(), ReqUsed :: term() }.
-callback parse_request( 
	Handler :: atom(), 
	Req :: term() 
) -> 
	{ ok, F :: atom(), A :: [ term() ], ReqUsed :: term() }.
-callback render_response(
	Handler :: atom(),
	RetValue :: term(),
	Req :: term()
) -> 
	{ ok, ReqResponded :: term() }.

-callback render_error(
	Error :: term(),
	Req :: term()
	) ->
	{ok, ReqResponded :: term()}.
