.class public final Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;->$pw:Ljava/io/PrintWriter;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;->$pw:Ljava/io/PrintWriter;

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method
