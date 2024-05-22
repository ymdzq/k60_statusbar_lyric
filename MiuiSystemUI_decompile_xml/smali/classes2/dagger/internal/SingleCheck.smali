.class public final Ldagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# static fields
.field public static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field public volatile instance:Ljava/lang/Object;

.field public volatile provider:Ljavax/inject/Provider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 9
    return-void
    .line 11
.end method

.method public static provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1

    .line 1
    instance-of v0, p0, Ldagger/internal/SingleCheck;

    .line 2
    if-nez v0, :cond_1

    .line 4
    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ldagger/internal/SingleCheck;

    .line 11
    invoke-direct {v0, p0}, Ldagger/internal/SingleCheck;-><init>(Ljavax/inject/Provider;)V

    .line 13
    return-object v0

    .line 16
    :cond_1
    :goto_0
    return-object p0
    .line 17
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 2
    sget-object v1, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    .line 4
    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 19
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 22
    :cond_1
    :goto_0
    return-object v0
    .line 24
.end method
