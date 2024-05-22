.class Lmiuix/animation/controller/StateComposer$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/utils/StyleComposer$IInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p3, [Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/animation/controller/StateComposer$1;->onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Lmiuix/animation/controller/IFolmeStateStyle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;[Lmiuix/animation/controller/IFolmeStateStyle;)Ljava/lang/Object;
    .locals 0

    .line 2
    array-length p0, p3

    if-lez p0, :cond_1

    array-length p0, p2

    if-lez p0, :cond_1

    const/4 p0, 0x0

    .line 3
    aget-object p1, p3, p0

    aget-object p0, p2, p0

    invoke-interface {p1, p0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 5
    aget-object p2, p3, p1

    invoke-interface {p2, p0}, Lmiuix/animation/controller/IFolmeStateStyle;->addState(Lmiuix/animation/controller/AnimState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public shouldIntercept(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "getState"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
