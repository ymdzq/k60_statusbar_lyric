.class public final Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mManagedButton:I

.field public mMode:I

.field public final synthetic this$0:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lmiuix/pickerwidget/widget/NumberPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final cancel()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 3
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 5
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 7
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 12
    iget-boolean v2, v1, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iput-boolean v0, v1, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 18
    iget v2, v1, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 20
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    .line 22
    move-result v3

    .line 25
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 26
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    .line 28
    move-result v4

    .line 31
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 32
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 35
    iget-boolean v2, v1, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 37
    if-eqz v2, :cond_1

    .line 39
    iput-boolean v0, v1, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 41
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    .line 43
    move-result v2

    .line 46
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 47
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 49
    invoke-virtual {v1, v0, v0, v2, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 51
    :cond_1
    return-void
    .line 54
.end method

.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_5

    .line 7
    if-eq v0, v1, :cond_0

    .line 9
    goto/16 :goto_0

    .line 11
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 13
    if-eq v0, v3, :cond_3

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    goto/16 :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 21
    iget-boolean v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 23
    if-nez v1, :cond_2

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 27
    move-result v1

    .line 30
    int-to-long v4, v1

    .line 31
    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    :cond_2
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 35
    iget-boolean v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 37
    xor-int/2addr v1, v3

    .line 39
    int-to-byte v1, v1

    .line 40
    iput-boolean v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 41
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    .line 43
    move-result v1

    .line 46
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 47
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 49
    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 51
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 55
    iget-boolean v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 57
    if-nez v1, :cond_4

    .line 59
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 61
    move-result v1

    .line 64
    int-to-long v4, v1

    .line 65
    invoke-virtual {v0, p0, v4, v5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    :cond_4
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 69
    iget-boolean v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 71
    xor-int/2addr v1, v3

    .line 73
    int-to-byte v1, v1

    .line 74
    iput-boolean v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 75
    iget v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 77
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    .line 79
    move-result v3

    .line 82
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 85
    move-result p0

    .line 88
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 89
    goto :goto_0

    .line 92
    :cond_5
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 93
    if-eq v0, v3, :cond_7

    .line 95
    if-eq v0, v1, :cond_6

    .line 97
    goto :goto_0

    .line 99
    :cond_6
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 100
    iput-boolean v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    .line 102
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    .line 104
    move-result v1

    .line 107
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 108
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 110
    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 112
    goto :goto_0

    .line 115
    :cond_7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 116
    iput-boolean v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    .line 118
    iget v1, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 120
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    .line 122
    move-result v3

    .line 125
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->this$0:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    .line 128
    move-result p0

    .line 131
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    .line 132
    :goto_0
    return-void
    .line 135
.end method
