.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$5;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTopActivityMayChanged(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 5
    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "onTopActivityMayChanged: topActivity="

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string v1, "FocusedNotifPromptContr"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$5;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->topActivityMayChanged(Ljava/lang/String;)V

    .line 30
    return-void
    .line 33
.end method
