.class public Lcom/android/wm/shell/onehanded/OneHandedState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_ENTERING:I = 0x1

.field public static final STATE_EXITING:I = 0x3

.field public static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OneHandedState"

.field private static sCurrentState:I


# instance fields
.field private mStateChangeListeners:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$M3Ta419Wng7XhuxfO2mzWdCgXJ4(ILcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedState;->lambda$setState$0(ILcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    .line 10
    const/4 p0, 0x0

    .line 12
    sput p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    .line 13
    return-void
    .line 15
.end method

.method private static synthetic lambda$setState$0(ILcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;->onStateChanged(I)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public addSListeners(Lcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/wm/shell/onehanded/OneHandedState;->TAG:Ljava/lang/String;

    .line 2
    const-string v0, "  sCurrentState="

    .line 4
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p0

    .line 9
    sget v0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    return-void
    .line 22
.end method

.method public getState()I
    .locals 0

    .line 1
    sget p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    .line 2
    return p0
    .line 4
.end method

.method public isInOneHanded()Z
    .locals 1

    .line 1
    sget p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public isTransitioning()Z
    .locals 2

    .line 1
    sget p0, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v1, 0x3

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :cond_1
    :goto_0
    return v0
    .line 12
.end method

.method public setState(I)V
    .locals 1

    .line 1
    sput p1, Lcom/android/wm/shell/onehanded/OneHandedState;->sCurrentState:I

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedState;->mStateChangeListeners:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedState$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method
