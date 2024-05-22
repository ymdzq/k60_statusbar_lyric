.class public final Lcom/android/systemui/doze/DozeDockHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field public final mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Lcom/android/systemui/dock/DockManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 5
    new-instance p1, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    .line 7
    invoke-direct {p1, p0}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeDockHandler;)V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler;->mDockEventListener:Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;

    .line 6
    const/4 p2, 0x1

    .line 8
    if-eq p1, p2, :cond_2

    .line 9
    const/16 p2, 0x9

    .line 11
    if-eq p1, p2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    .line 16
    if-nez p1, :cond_1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    .line 21
    iget-object p1, p1, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 23
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    .line 29
    if-eqz p1, :cond_3

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    .line 34
    iget-object p1, p1, Lcom/android/systemui/doze/DozeDockHandler;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 36
    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    .line 38
    :goto_0
    return-void
    .line 40
.end method
