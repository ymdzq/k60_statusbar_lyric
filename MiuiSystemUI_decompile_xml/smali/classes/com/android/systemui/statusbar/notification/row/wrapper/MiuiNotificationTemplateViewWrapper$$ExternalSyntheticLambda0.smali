.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    .line 2
    const v0, 0x7f07095b    # @dimen/miui_notification_content_margin_end '12.0dp'

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMiuiAction:Landroid/view/View;

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    const v0, 0x7f070db8    # @dimen/notification_main_column_right_margin '10.91dp'

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->getDimensionPixelSize(I)I

    .line 21
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mMainColumn:Landroid/view/View;

    .line 26
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;->setViewMarginEnd(ILandroid/view/View;)V

    .line 28
    return-void
    .line 31
.end method
