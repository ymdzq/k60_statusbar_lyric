.class public final Lcom/android/systemui/statusbar/MiLinkIconControl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Landroid/app/StatusBarManager;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, Landroid/app/StatusBarManager;

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiLinkIconControl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 13
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string p1, "action_set_status_bar_tv"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    const/4 p1, 0x0

    .line 13
    if-eqz p3, :cond_1

    .line 14
    const-string/jumbo p2, "visible"

    .line 16
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 19
    move-result p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    const/4 p1, 0x1

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/MiLinkIconControl;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 26
    const-string/jumbo p2, "tv"

    .line 28
    invoke-virtual {p0, p2, p1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 31
    :cond_2
    return-void
    .line 34
.end method
