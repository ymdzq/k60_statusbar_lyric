.class public final Lcom/android/systemui/dump/LogBufferEulogizer$readEulogyIfPresent$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

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
