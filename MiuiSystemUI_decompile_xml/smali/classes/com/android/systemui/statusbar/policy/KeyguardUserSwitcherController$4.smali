.class public final Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;
.super Landroid/database/DataSetObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 2
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged()V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mAdapter:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;

    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BaseUserSwitcherAdapter;->getCount()I

    .line 12
    move-result v2

    .line 15
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v3

    .line 19
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->DEBUG:Z

    .line 20
    const-string v5, "KeyguardUserSwitcherController"

    .line 22
    if-eqz v4, :cond_0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v4

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v6

    .line 33
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 37
    const-string/jumbo v6, "refreshUserList childCount=%d adapterCount=%d"

    .line 38
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 44
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    const/4 v4, 0x0

    .line 48
    move v6, v4

    .line 49
    move v7, v6

    .line 50
    :goto_0
    if-ge v6, v3, :cond_7

    .line 51
    if-ge v6, v2, :cond_5

    .line 53
    if-ge v6, v0, :cond_1

    .line 55
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 57
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 59
    move-result-object v8

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v8, 0x0

    .line 64
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 65
    invoke-virtual {v1, v6, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    move-result-object v9

    .line 70
    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;

    .line 71
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    .line 73
    move-result-object v10

    .line 76
    check-cast v10, Lcom/android/systemui/user/data/source/UserRecord;

    .line 77
    iget-boolean v11, v10, Lcom/android/systemui/user/data/source/UserRecord;->isCurrent:Z

    .line 79
    const/4 v12, 0x1

    .line 81
    if-eqz v11, :cond_3

    .line 82
    if-eqz v6, :cond_2

    .line 84
    const-string v7, "Current user is not the first view in the list"

    .line 86
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    iget-object v7, v10, Lcom/android/systemui/user/data/source/UserRecord;->info:Landroid/content/pm/UserInfo;

    .line 91
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    .line 93
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 95
    invoke-virtual {v9, v12, v7, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 97
    move v7, v12

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mUserSwitcherOpen:Z

    .line 102
    invoke-virtual {v9, v10, v12, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->updateVisibilities(ZZZ)V

    .line 104
    :goto_2
    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mDarkAmount:F

    .line 107
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/KeyguardUserDetailItemView;->setDarkAmount(F)V

    .line 109
    if-nez v8, :cond_4

    .line 112
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 114
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    goto :goto_3

    .line 119
    :cond_4
    if-eq v8, v9, :cond_6

    .line 120
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 122
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 124
    invoke-virtual {v8, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 127
    goto :goto_3

    .line 130
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mListView:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    .line 131
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 133
    move-result v9

    .line 136
    add-int/lit8 v9, v9, -0x1

    .line 137
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 139
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 142
    goto :goto_0

    .line 144
    :cond_7
    if-nez v7, :cond_8

    .line 145
    const-string p0, "Current user is not listed"

    .line 147
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_8
    return-void
    .line 152
.end method
