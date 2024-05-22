.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

.field public final synthetic val$listener:Landroid/app/PendingIntent$CancelListener;

.field public final synthetic val$pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->val$pendingIntent:Landroid/app/PendingIntent;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->val$listener:Landroid/app/PendingIntent$CancelListener;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->val$pendingIntent:Landroid/app/PendingIntent;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->val$listener:Landroid/app/PendingIntent$CancelListener;

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;

    .line 10
    const/4 v2, 0x2

    .line 12
    invoke-direct {v1, v2, v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->val$pendingIntent:Landroid/app/PendingIntent;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$2;->val$listener:Landroid/app/PendingIntent$CancelListener;

    .line 8
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;

    .line 10
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, v2, v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method
