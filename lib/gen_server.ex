module GenServer
  protected

  % Callback that defines the registered module as a genserver
  def __added_as_proto__(base)
    base.define_module_attribute('behavior, 'gen_server)
  end

  def start_link(args)
    start_link(args, [])
  end

  def start_link(args, options)
    Erlang.gen_server.start_link(self.__callbacks_module__, args, options)
  end

  def start_link(name, args, options)
    Erlang.gen_server.start_link(name, self.__callbacks_module__, args, options)
  end

  def call(ref, request)
    Erlang.gen_server.call(ref, request)
  end

  def call(ref, request, timeout)
    Erlang.gen_server.call(ref, request, timeout)
  end

  def cast(ref, request)
    Erlang.gen_server.cast(ref, request)
  end
end