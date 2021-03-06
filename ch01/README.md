第一章：gRPC 简介
===

什么是 gRPC
---

gRPC 是一个高性能、通用的开源RPC框架，其由 Google 主要面向微服务开发者并基于 HTTP/2 协议标准而设计，基于ProtoBuf(Protocol Buffers)序列化协议开发，且支持众多开发语言。它提供了高效的方式使得数据中心间的服务能够互联，同时也支持如负载均衡，链路追踪，健康检查以及鉴权等插件扩展。

在 gRPC 里客户端应用可以像调用本地对象一样直接调用另一台不同的机器上服务端应用的方法，使得您能够更容易地创建分布式应用和服务。与许多 RPC 系统类似，gRPC 也是基于以下理念：定义一个服务，指定其能够被远程调用的方法（包含参数和返回类型）。在服务端实现这个接口，并运行一个 gRPC 服务器来处理客户端调用。在客户端拥有一个存根能够像服务端一样的方法。

![proto](../assets/landing-2.svg)

gRPC 客户端和服务端可以在多种环境中运行和交互 - 从 google 内部的服务器到你自己的笔记本，并且可以用任何 gRPC 支持的语言来编写。所以，你可以很容易地用 Java 创建一个 gRPC 服务端，用 Go、Python、Ruby 来创建客户端。此外，Google 最新 API 将有 gRPC 版本的接口，使你很容易地将 Google 的功能集成到你的应用里。

gRPC 默认使用 protocol buffers，这是 Google 开源的一套成熟的结构数据序列化机制（当然也可以使用其他数据格式如 JSON）。正如你将在下方例子里所看到的，你用 proto files 创建 gRPC 服务，用 protocol buffers 消息类型来定义方法参数和返回类型。你可以在 Protocol Buffers 文档找到更多关于 Protocol Buffers 的资料。

gRPC的使用情况
---

* gRPC Gateway
* Polyglot: gRPC command line client
* FlatBuffer for gRPC
* Go kit with gRPC transport
* etcd
* cockroachdb
* Zipkin for gRPC
* TiDB
* Apache BookKeeper
