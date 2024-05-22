.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mIsTransparentBg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    const-string p1, "oneLine_transparent"

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/MiuiNotificationOneLineViewWrapper;->mIsTransparentBg:Z

    .line 15
    return-void
    .line 17
.end method
