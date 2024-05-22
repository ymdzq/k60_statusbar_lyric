.class public abstract Lcom/miui/maml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 9
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 11
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 2
    const/4 v1, 0x5

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_2

    .line 12
    const/4 p1, 0x1

    .line 14
    if-eq p0, p1, :cond_1

    .line 15
    return v1

    .line 17
    :cond_1
    return p1

    .line 18
    :cond_2
    const/4 p0, 0x0

    .line 19
    return p0
    .line 20
.end method

.method public final isTurningOn()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method public final setCurrentState(Landroid/content/Context;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz p2, :cond_3

    .line 6
    if-eq p2, v2, :cond_2

    .line 8
    const/4 v3, 0x2

    .line 10
    if-eq p2, v3, :cond_1

    .line 11
    const/4 v3, 0x3

    .line 13
    if-eq p2, v3, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 17
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 24
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 28
    goto :goto_0

    .line 30
    :cond_2
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 31
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 38
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 42
    :goto_0
    if-eqz v0, :cond_6

    .line 44
    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 46
    if-nez p2, :cond_6

    .line 48
    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 50
    if-eqz p2, :cond_6

    .line 52
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 54
    if-eqz p2, :cond_4

    .line 56
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 58
    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result p2

    .line 65
    if-eqz p2, :cond_4

    .line 66
    goto :goto_1

    .line 68
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 69
    if-eqz p2, :cond_5

    .line 71
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    move-result p2

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 79
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 82
    :cond_6
    return-void
    .line 84
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    const/4 v3, 0x5

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 16
    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    move-result v0

    .line 23
    xor-int/lit8 v2, v0, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    move v2, v1

    .line 27
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 32
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 34
    if-eqz v0, :cond_3

    .line 36
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 38
    goto :goto_1

    .line 40
    :cond_3
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 41
    invoke-virtual {p0, p1, v2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 43
    :goto_1
    return-void
    .line 46
.end method
