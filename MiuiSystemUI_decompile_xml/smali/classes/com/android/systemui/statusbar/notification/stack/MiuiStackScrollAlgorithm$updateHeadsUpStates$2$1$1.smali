.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$updateHeadsUpStates$2$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$updateHeadsUpStates$2$1$1;->$it:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$updateHeadsUpStates$2$1$1;->$it:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 4
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    div-float/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiStackScrollAlgorithm$updateHeadsUpStates$2$1$1;->$it:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 17
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    div-float/2addr v0, v2

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 23
    return-void
    .line 26
.end method
