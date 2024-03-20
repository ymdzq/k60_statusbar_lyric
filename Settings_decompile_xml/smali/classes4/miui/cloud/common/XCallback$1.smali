.class Lmiui/cloud/common/XCallback$1;
.super Ljava/lang/Object;
.source "XCallback.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/common/XCallback;->asInterface()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/cloud/common/XCallback;


# direct methods
.method constructor <init>(Lmiui/cloud/common/XCallback;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lmiui/cloud/common/XCallback$1;->this$0:Lmiui/cloud/common/XCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lmiui/cloud/common/XCallback$1;->this$0:Lmiui/cloud/common/XCallback;

    invoke-virtual {p0, p2, p3}, Lmiui/cloud/common/XCallback;->handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
