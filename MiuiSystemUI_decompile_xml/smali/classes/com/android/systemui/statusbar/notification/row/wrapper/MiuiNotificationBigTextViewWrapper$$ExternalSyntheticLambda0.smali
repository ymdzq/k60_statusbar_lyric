.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;

    .line 2
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->mBigText:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    .line 8
    move-result v1

    .line 11
    if-eq p0, v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationBigTextViewWrapper;->handleBigTextViews()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
