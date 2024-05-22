.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_CLICK_INTERVAL:I = 0x12c


# instance fields
.field private clickCount:I

.field private final clickTimestamps:[J

.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickCount:I

    .line 8
    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [J

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickTimestamps:[J

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickTimestamps:[J

    .line 6
    iget v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickCount:I

    .line 8
    rem-int/lit8 v3, v2, 0x3

    .line 10
    aput-wide v0, p1, v3

    .line 12
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x2

    .line 15
    if-lt v2, v1, :cond_2

    .line 16
    aget-wide v3, p1, v0

    .line 18
    const/4 v5, 0x0

    .line 20
    aget-wide v6, p1, v5

    .line 21
    sub-long v6, v3, v6

    .line 23
    aget-wide v8, p1, v1

    .line 25
    sub-long/2addr v8, v3

    .line 27
    const-wide/16 v3, 0x12c

    .line 28
    cmp-long p1, v6, v3

    .line 30
    if-gez p1, :cond_1

    .line 32
    cmp-long p1, v8, v3

    .line 34
    if-gez p1, :cond_1

    .line 36
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 38
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 40
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 42
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 48
    iget-object p1, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 50
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 52
    move-result-object p1

    .line 55
    iget p1, p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->freeFormScale:F

    .line 56
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 58
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mWindowDecorViewModel:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;

    .line 60
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel;->getBottomCaptionHeight()I

    .line 62
    move-result v0

    .line 65
    new-instance v2, Landroid/graphics/Rect;

    .line 66
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 68
    iget-object v3, v3, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 70
    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getMiuiFreeFormStackInfo()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 72
    move-result-object v3

    .line 75
    iget-object v3, v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->bounds:Landroid/graphics/Rect;

    .line 76
    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 78
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 81
    int-to-float v3, v3

    .line 83
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 84
    move-result v4

    .line 87
    int-to-float v4, v4

    .line 88
    mul-float/2addr v4, p1

    .line 89
    add-float/2addr v4, v3

    .line 90
    float-to-int v3, v4

    .line 91
    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 92
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 94
    int-to-float v3, v3

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 97
    move-result v4

    .line 100
    int-to-float v4, v4

    .line 101
    mul-float/2addr v4, p1

    .line 102
    add-float/2addr v4, v3

    .line 103
    float-to-int v3, v4

    .line 104
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 105
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 107
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 109
    add-int/2addr v4, v2

    .line 111
    div-int/2addr v4, v1

    .line 112
    int-to-float v1, v3

    .line 113
    int-to-float v0, v0

    .line 114
    const/high16 v2, 0x40000000    # 2.0f

    .line 115
    invoke-static {v0, p1, v2, v1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 117
    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration;

    .line 121
    iget-object v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBaseWindowDecoration;->mContext:Landroid/content/Context;

    .line 123
    const/high16 v1, 0x40800000    # 4.0f

    .line 125
    invoke-static {v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiMultiWinSwitchUtils;->dip2px(Landroid/content/Context;F)I

    .line 127
    move-result v0

    .line 130
    int-to-float v0, v0

    .line 131
    sub-float/2addr p1, v0

    .line 132
    float-to-int p1, p1

    .line 133
    const/4 v0, 0x7

    .line 134
    invoke-static {v0, v4, p1, v5}, Lmiui/app/MiuiFreeFormManager;->showFreeFormTipView(IIII)V

    .line 135
    iput v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickCount:I

    .line 138
    goto :goto_0

    .line 140
    :cond_0
    const-string p0, "MiuiWindowDecoration"

    .line 141
    const-string/jumbo p1, "showTimpView mTaskInfo.getMiuiFreeFormStackInfo() is null"

    .line 143
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_0

    .line 149
    :cond_1
    add-int/2addr v2, v0

    .line 150
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickCount:I

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    add-int/2addr v2, v0

    .line 154
    iput v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecoration$2;->clickCount:I

    .line 155
    :goto_0
    return-void
    .line 157
.end method
