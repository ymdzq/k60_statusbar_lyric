.class public final Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $error:Z

.field public final synthetic $structureIndex:I

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    iput p2, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->$structureIndex:I

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->$error:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    move-object v1, v2

    .line 9
    :cond_0
    new-instance v3, Lcom/android/systemui/controls/management/StructureAdapter;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 12
    invoke-direct {v3, v0}, Lcom/android/systemui/controls/management/StructureAdapter;-><init>(Ljava/util/List;)V

    .line 14
    invoke-virtual {v1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    if-nez v0, :cond_1

    .line 24
    move-object v0, v2

    .line 26
    :cond_1
    iget v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->$structureIndex:I

    .line 27
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->$error:Z

    .line 32
    const/4 v1, 0x0

    .line 34
    const/4 v3, 0x1

    .line 35
    const/16 v4, 0x8

    .line 36
    if-eqz v0, :cond_5

    .line 38
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 40
    iget-object v5, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 42
    if-nez v5, :cond_2

    .line 44
    move-object v5, v2

    .line 46
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 53
    iget-object v6, v6, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->appName:Ljava/lang/CharSequence;

    .line 55
    if-nez v6, :cond_3

    .line 57
    const-string v6, ""

    .line 59
    :cond_3
    aput-object v6, v3, v1

    .line 61
    const v1, 0x7f1302ff    # @string/controls_favorite_load_error 'Controls could not be loaded. Check the %s app to make sure that the app settings haven’t changed.'

    .line 63
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->subtitleView:Landroid/widget/TextView;

    .line 75
    if-nez p0, :cond_4

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    move-object v2, p0

    .line 80
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    goto/16 :goto_4

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 86
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 88
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_8

    .line 94
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 96
    iget-object v1, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 98
    if-nez v1, :cond_6

    .line 100
    move-object v1, v2

    .line 102
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v0

    .line 106
    const v3, 0x7f130300    # @string/controls_favorite_load_none 'Compatible controls unavailable'

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 117
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->subtitleView:Landroid/widget/TextView;

    .line 119
    if-nez p0, :cond_7

    .line 121
    goto :goto_1

    .line 123
    :cond_7
    move-object v2, p0

    .line 124
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    goto :goto_4

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 129
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->statusText:Landroid/widget/TextView;

    .line 131
    if-nez v0, :cond_9

    .line 133
    move-object v0, v2

    .line 135
    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 139
    iget-object v4, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 141
    if-nez v4, :cond_a

    .line 143
    move-object v4, v2

    .line 145
    :cond_a
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 148
    move-result v0

    .line 151
    invoke-virtual {v4, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 155
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 157
    if-nez v0, :cond_b

    .line 159
    move-object v0, v2

    .line 161
    :cond_b
    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0, v4}, Lcom/android/systemui/controls/management/ManagementPageIndicator;->setLocation(F)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 166
    iget-object v4, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 168
    if-nez v4, :cond_c

    .line 170
    move-object v4, v2

    .line 172
    :cond_c
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->listOfStructures:Ljava/util/List;

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 175
    move-result v0

    .line 178
    if-le v0, v3, :cond_d

    .line 179
    goto :goto_2

    .line 181
    :cond_d
    const/4 v1, 0x4

    .line 182
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 186
    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->pageIndicator:Lcom/android/systemui/controls/management/ManagementPageIndicator;

    .line 188
    if-nez v0, :cond_e

    .line 190
    move-object v0, v2

    .line 192
    :cond_e
    invoke-static {v0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    .line 193
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 197
    new-instance v3, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2$1$1;

    .line 199
    invoke-direct {v3, v1}, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2$1$1;-><init>(Lcom/android/systemui/controls/management/ControlsFavoritingActivity;)V

    .line 201
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity$loadControls$1$1$2;->this$0:Lcom/android/systemui/controls/management/ControlsFavoritingActivity;

    .line 210
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsFavoritingActivity;->structurePager:Landroidx/viewpager2/widget/ViewPager2;

    .line 212
    if-nez p0, :cond_f

    .line 214
    goto :goto_3

    .line 216
    :cond_f
    move-object v2, p0

    .line 217
    :goto_3
    invoke-static {v2}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    .line 218
    move-result-object p0

    .line 221
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 222
    :goto_4
    return-void
    .line 225
.end method
