.class public abstract Lcom/android/systemui/statusbar/connectivity/SignalController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

.field public final mHistory:[Lcom/android/systemui/statusbar/SignalIcon$State;

.field public mHistoryIndex:I

.field public final mLastState:Lcom/android/systemui/statusbar/SignalIcon$State;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

.field public final mTag:Ljava/lang/String;

.field public final mTransportType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->DEBUG:Z

    .line 4
    sget-boolean v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->DEBUG:Z

    .line 6
    return-void
    .line 8
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/connectivity/CallbackHandler;Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "NetworkController."

    .line 5
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 13
    iput p3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTransportType:I

    .line 15
    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    .line 17
    iput-object p4, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->cleanState()Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->cleanState()Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 27
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 31
    const/16 p1, 0x40

    .line 33
    new-array p2, p1, [Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 37
    const/4 p2, 0x0

    .line 39
    :goto_0
    if-ge p2, p1, :cond_0

    .line 40
    iget-object p3, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->cleanState()Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 44
    move-result-object p4

    .line 47
    aput-object p4, p3, p2

    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    return-void
    .line 53
.end method


# virtual methods
.method public abstract cleanState()Lcom/android/systemui/statusbar/SignalIcon$State;
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "  - "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " -----"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "  Current State: "

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const/4 v1, 0x0

    .line 50
    move v2, v1

    .line 51
    move v3, v2

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 53
    const/16 v5, 0x40

    .line 55
    if-ge v2, v5, :cond_1

    .line 57
    aget-object v4, v4, v2

    .line 59
    iget-wide v4, v4, Lcom/android/systemui/statusbar/SignalIcon$State;->time:J

    .line 61
    const-wide/16 v6, 0x0

    .line 63
    cmp-long v4, v4, v6

    .line 65
    if-eqz v4, :cond_0

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    .line 74
    add-int/2addr v2, v5

    .line 76
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 77
    iget v6, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    .line 79
    add-int/2addr v6, v5

    .line 81
    sub-int/2addr v6, v3

    .line 82
    if-lt v2, v6, :cond_2

    .line 83
    and-int/lit8 v6, v2, 0x3f

    .line 85
    aget-object v6, v4, v6

    .line 87
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_1

    .line 92
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 93
    move-result p0

    .line 96
    if-ge v1, p0, :cond_3

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "  Previous State("

    .line 101
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v2, v1, 0x1

    .line 106
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v3, "): "

    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    aget-object v1, v4, v1

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    move v1, v2

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    return-void
    .line 130
.end method

.method public final getTextIfExists(I)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p0, ""

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public final notifyListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V

    return-void
.end method

.method public abstract notifyListeners(Lcom/android/systemui/statusbar/connectivity/SignalCallback;)V
.end method

.method public final notifyListenersIfNecessary()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mLastState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalIcon$State;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_1

    .line 11
    sget-boolean v2, Lcom/android/systemui/statusbar/connectivity/SignalController;->DEBUG:Z

    .line 13
    if-eqz v2, :cond_0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v4, "Change in state from: "

    .line 19
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "\n\tto: "

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 38
    iget-object v4, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    .line 39
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    move v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistory:[Lcom/android/systemui/statusbar/SignalIcon$State;

    .line 49
    iget v4, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    .line 51
    aget-object v2, v2, v4

    .line 53
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/SignalIcon$State;->copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V

    .line 55
    iget v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    .line 58
    add-int/2addr v2, v3

    .line 60
    rem-int/lit8 v2, v2, 0x40

    .line 61
    iput v2, p0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mHistoryIndex:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    move-result-wide v2

    .line 68
    iput-wide v2, v1, Lcom/android/systemui/statusbar/SignalIcon$State;->time:J

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalIcon$State;->copyFrom(Lcom/android/systemui/statusbar/SignalIcon$State;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListeners()V

    .line 74
    :cond_2
    return-void
    .line 77
.end method
