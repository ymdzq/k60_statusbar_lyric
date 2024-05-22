.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $height:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $keyboardShortcutsLayout:Landroid/widget/FrameLayout;

.field public final synthetic $maxNum:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $shortcutsList:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $this_apply:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic $viewPager:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $width:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$width:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object p3, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$context:Landroid/content/Context;

    .line 6
    iput-object p4, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$keyboardShortcutsLayout:Landroid/widget/FrameLayout;

    .line 8
    iput-object p5, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$height:Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    iput-object p6, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$viewPager:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    iput-object p7, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$shortcutsList:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    iput-object p8, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$maxNum:Lkotlin/jvm/internal/Ref$IntRef;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
    .line 21
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$width:Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 4
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$width:Lkotlin/jvm/internal/Ref$IntRef;

    .line 15
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    .line 19
    move-result v1

    .line 22
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 23
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$context:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    move-result-object v0

    .line 34
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 35
    if-ne v0, v2, :cond_0

    .line 37
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$keyboardShortcutsLayout:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 41
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$width:Lkotlin/jvm/internal/Ref$IntRef;

    .line 45
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 47
    iget-object v3, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$context:Landroid/content/Context;

    .line 49
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v3

    .line 54
    const v4, 0x7f070877    # @dimen/miui_keyboard_shortcuts_dialog_padding_horizontal '35.56dp'

    .line 55
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v3

    .line 61
    add-int/2addr v3, v1

    .line 62
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$context:Landroid/content/Context;

    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v1

    .line 68
    const v4, 0x7f070878    # @dimen/miui_keyboard_shortcuts_dialog_padding_start '8.88dp'

    .line 69
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v1

    .line 75
    add-int/2addr v1, v3

    .line 76
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$keyboardShortcutsLayout:Landroid/widget/FrameLayout;

    .line 79
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$height:Lkotlin/jvm/internal/Ref$IntRef;

    .line 84
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 86
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 90
    move-result v1

    .line 93
    if-ge v0, v1, :cond_4

    .line 94
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$height:Lkotlin/jvm/internal/Ref$IntRef;

    .line 96
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$this_apply:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 100
    move-result v1

    .line 103
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 104
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$viewPager:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 106
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 110
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 112
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$height:Lkotlin/jvm/internal/Ref$IntRef;

    .line 116
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 118
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$context:Landroid/content/Context;

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 128
    move-result-object v0

    .line 131
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 132
    const/4 v1, 0x0

    .line 134
    if-ne v0, v2, :cond_1

    .line 135
    move v0, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_1
    move v0, v1

    .line 139
    :goto_0
    iget-object v3, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$shortcutsList:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 140
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 142
    check-cast v3, Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result v3

    .line 149
    iget-object v4, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$maxNum:Lkotlin/jvm/internal/Ref$IntRef;

    .line 150
    iget v4, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 152
    div-int/2addr v3, v4

    .line 154
    if-nez v3, :cond_2

    .line 155
    goto :goto_1

    .line 157
    :cond_2
    move v2, v1

    .line 158
    :goto_1
    and-int/2addr v0, v2

    .line 159
    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$viewPager:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 162
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 164
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 166
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    move-result-object v0

    .line 171
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 172
    iget-object v2, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$context:Landroid/content/Context;

    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object v2

    .line 179
    const v3, 0x7f070876    # @dimen/miui_keyboard_shortcuts_dialog_padding_bottom '8.89dp'

    .line 180
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 183
    move-result v2

    .line 186
    add-int/2addr v2, v1

    .line 187
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$viewPager:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 190
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 192
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 194
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 196
    :cond_4
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1;->$keyboardShortcutsLayout:Landroid/widget/FrameLayout;

    .line 199
    new-instance v0, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1$1;

    .line 201
    invoke-direct {v0, p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts$populateKeyboardShortcuts$1$1$1;-><init>(Landroid/widget/FrameLayout;)V

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
    .line 209
.end method
