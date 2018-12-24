
#include <assert.h>

#include "../net/SocketTCP.h"

SocketTCP::SocketTCP()
{
    socketFd.setFd(creSocketTCP());
    socketFd.setNonBlocking();
}

SocketTCP::~SocketTCP() {}

int SocketTCP::creSocketTCP() 
{
    int newSocket = socket(AF_INET, SOCK_STREAM, 0);
    assert(newSocket != -1);

    return newSocket;
}

int SocketTCP::Bind(InitSockAddr localAddr) 
{
    int res = bind(socketFd.fd(),
                   static_cast<sockaddr *> (localAddr.sockAddr()),
                   localAddr.length());
    assert(res != -1);
}

int SocketTCP::Listen(int backlog) 
{
    int res = listen(socketFd.fd(), backlog);
    assert(res != -1);
}

int SocketTCP::Accept()
{
    errno = 0;
    sockaddr_in peerAddr;
    memset(&peerAddr, 0, sizeof(sockaddr_in));
    socklen_t peerAddrLen = sizeof(peerAddr);

    int connfd = -1;
    connfd = accept(socketFd.fd(), 
                    (sockaddr *)&peerAddr, 
                    &peerAddrLen);
    
    if (connfd < 0) 
        return errno;
    else 
        return connfd;
}

void SocketTCP::setNoDely() 
{
    int flag = 1;
    int res = setsockopt(socketFd.fd(),
                         IPPROTO_TCP,
                         TCP_NODELAY,
                         &flag,
                         sizeof(flag));
    if (res == -1) 
    {
        perror("setNoDely failed ");
    }
}

void SocketTCP::setReuseAddr() 
{
    int flag = 1;
    int res = setsockopt(socketFd.fd(),
                         IPPROTO_TCP,
                         SO_REUSEADDR,
                         &flag,
                         sizeof(flag));
    if (res == -1) 
    {
        perror("setReuseAddr falied ");
    }
}

void SocketTCP::setKeepLive() 
{
    int flag = 1;
    int res = setsockopt(socketFd.fd(),
                         IPPROTO_TCP,
                         SO_KEEPALIVE,
                         &flag,
                         sizeof(flag));
    if (res == -1) 
    {
        perror("setKeepLive failed ");
    }
}

