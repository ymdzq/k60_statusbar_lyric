.class public final Lcom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 2
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 9
    iget-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->tmpLocation:[I

    .line 11
    const/4 v2, 0x1

    .line 13
    aget v1, v1, v2

    .line 14
    const/4 v3, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    :goto_0
    iget-object v0, v0, Lcom/google/android/material/navigation/NavigationView;->presenter:Lcom/google/android/material/internal/NavigationMenuPresenter;

    .line 22
    iget-boolean v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 24
    if-eq v4, v1, :cond_2

    .line 26
    iput-boolean v1, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 28
    iget-object v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->headerLayout:Landroid/widget/LinearLayout;

    .line 30
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 32
    move-result v4

    .line 35
    if-nez v4, :cond_1

    .line 36
    iget-boolean v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->isBehindStatusBar:Z

    .line 38
    if-eqz v4, :cond_1

    .line 40
    iget v4, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->paddingTopDefault:I

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    move v4, v3

    .line 45
    :goto_1
    iget-object v0, v0, Lcom/google/android/material/internal/NavigationMenuPresenter;->menuView:Lcom/google/android/material/internal/NavigationMenuView;

    .line 46
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 48
    move-result v5

    .line 51
    invoke-virtual {v0, v3, v4, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 55
    if-eqz v1, :cond_3

    .line 57
    iget-boolean v1, v0, Lcom/google/android/material/navigation/NavigationView;->topInsetScrimEnabled:Z

    .line 59
    if-eqz v1, :cond_3

    .line 61
    move v1, v2

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move v1, v3

    .line 65
    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawTopInsetForeground(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 69
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v0

    .line 74
    :goto_3
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 75
    if-eqz v1, :cond_5

    .line 77
    instance-of v1, v0, Landroid/app/Activity;

    .line 79
    if-eqz v1, :cond_4

    .line 81
    check-cast v0, Landroid/app/Activity;

    .line 83
    goto :goto_4

    .line 85
    :cond_4
    check-cast v0, Landroid/content/ContextWrapper;

    .line 86
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 88
    move-result-object v0

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const/4 v0, 0x0

    .line 93
    :goto_4
    if-eqz v0, :cond_9

    .line 94
    const v1, 0x1020002    # @android:id/content

    .line 96
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 103
    move-result v1

    .line 106
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 107
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    .line 109
    move-result v4

    .line 112
    if-ne v1, v4, :cond_6

    .line 113
    move v1, v2

    .line 115
    goto :goto_5

    .line 116
    :cond_6
    move v1, v3

    .line 117
    :goto_5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    .line 122
    move-result v0

    .line 125
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 126
    move-result v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    move v0, v2

    .line 132
    goto :goto_6

    .line 133
    :cond_7
    move v0, v3

    .line 134
    :goto_6
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationView$2;->this$0:Lcom/google/android/material/navigation/NavigationView;

    .line 135
    if-eqz v1, :cond_8

    .line 137
    if-eqz v0, :cond_8

    .line 139
    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationView;->bottomInsetScrimEnabled:Z

    .line 141
    if-eqz v0, :cond_8

    .line 143
    goto :goto_7

    .line 145
    :cond_8
    move v2, v3

    .line 146
    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setDrawBottomInsetForeground(Z)V

    .line 147
    :cond_9
    return-void
    .line 150
.end method
