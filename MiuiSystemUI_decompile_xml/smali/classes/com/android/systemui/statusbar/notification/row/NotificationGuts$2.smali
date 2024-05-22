.class public final Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mNeedsFalsingProtection:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mExposed:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, -0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v0, v0, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
