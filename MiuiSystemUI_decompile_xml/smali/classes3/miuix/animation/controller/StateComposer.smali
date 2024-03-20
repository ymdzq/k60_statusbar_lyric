.class public Lmiuix/animation/controller/StateComposer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final METHOD_GET_STATE:Ljava/lang/String; = "getState"

.field private static final sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/controller/StateComposer$1;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/controller/StateComposer$1;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/controller/StateComposer;->sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 7
    return-void
    .line 9
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_1

    .line 7
    :cond_0
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    new-instance v0, Lmiuix/animation/controller/FolmeState;

    .line 13
    aget-object p0, p0, v1

    .line 15
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 17
    return-object v0

    .line 20
    :cond_1
    array-length v0, p0

    .line 21
    new-array v0, v0, [Lmiuix/animation/controller/FolmeState;

    .line 22
    :goto_0
    array-length v2, p0

    .line 24
    if-ge v1, v2, :cond_2

    .line 25
    new-instance v2, Lmiuix/animation/controller/FolmeState;

    .line 27
    aget-object v3, p0, v1

    .line 29
    invoke-direct {v2, v3}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 31
    aput-object v2, v0, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    const-class p0, Lmiuix/animation/controller/IFolmeStateStyle;

    .line 39
    sget-object v1, Lmiuix/animation/controller/StateComposer;->sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    .line 41
    invoke-static {p0, v1, v0}, Lmiuix/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiuix/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Lmiuix/animation/controller/IFolmeStateStyle;

    .line 47
    return-object p0

    .line 49
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 50
    return-object p0
    .line 51
.end method
