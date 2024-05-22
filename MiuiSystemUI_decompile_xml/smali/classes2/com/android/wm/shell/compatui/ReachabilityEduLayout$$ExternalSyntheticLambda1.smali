.class public final synthetic Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 10
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 12
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p0

    .line 17
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 18
    return-void

    .line 20
    :pswitch_1
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    check-cast p2, Ljava/lang/Integer;

    .line 23
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 25
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p0

    .line 30
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 31
    return-void

    .line 33
    :pswitch_2
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    check-cast p2, Ljava/lang/Integer;

    .line 36
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result p0

    .line 43
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 44
    return-void

    .line 46
    :goto_0
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    check-cast p2, Ljava/lang/Integer;

    .line 49
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 51
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p0

    .line 56
    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 57
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 60
.end method
