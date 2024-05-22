.class public final synthetic Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 10
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_1
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 21
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_2
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 32
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :goto_0
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    sget p0, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->$r8$clinit:I

    .line 43
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 52
.end method
