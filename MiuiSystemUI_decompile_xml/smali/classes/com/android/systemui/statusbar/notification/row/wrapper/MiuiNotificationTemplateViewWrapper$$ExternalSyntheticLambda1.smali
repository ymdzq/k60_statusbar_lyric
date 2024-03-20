.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;

    .line 2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    .line 10
    move-result v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eq p0, v1, :cond_1

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationTemplateViewWrapper;->handleTemplateViews()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method
