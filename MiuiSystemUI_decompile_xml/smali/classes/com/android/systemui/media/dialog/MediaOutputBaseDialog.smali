.class public abstract Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/dialog/MediaOutputController$Callback;
.implements Landroid/view/Window$Callback;


# instance fields
.field public mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

.field public mAppButton:Landroid/widget/Button;

.field public mAppResourceIcon:Landroid/widget/ImageView;

.field public final mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

.field public mBroadcastIcon:Landroid/widget/ImageView;

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public mCastAppLayout:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public mDeviceListLayout:Landroid/widget/LinearLayout;

.field public final mDeviceListLayoutListener:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

.field public mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mDialogView:Landroid/view/View;

.field public mDismissing:Z

.field public mDoneButton:Landroid/widget/Button;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mHeaderIcon:Landroid/widget/ImageView;

.field public mHeaderSubtitle:Landroid/widget/TextView;

.field public mHeaderTitle:Landroid/widget/TextView;

.field public mIsLeBroadcastCallbackRegistered:Z

.field public final mItemHeight:I

.field public final mLayoutManager:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

.field public final mListMaxHeight:I

.field public final mListPaddingTop:I

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mMediaMetadataSectionLayout:Landroid/widget/LinearLayout;

.field public final mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

.field public mShouldLaunchLeBroadcastDialog:Z

.field public mStopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const v1, 0x7f14056a    # @style/Theme.SystemUI.Dialog.Media

    .line 3
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(IZLandroid/content/Context;)V

    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayoutListener:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    .line 25
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 27
    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 32
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 42
    new-instance p2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

    .line 44
    invoke-direct {p2, p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;)V

    .line 46
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mLayoutManager:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object p2

    .line 54
    const p3, 0x7f0707ab    # @dimen/media_output_dialog_list_max_height '355.0dp'

    .line 55
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result p2

    .line 61
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mListMaxHeight:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p1

    .line 67
    const p2, 0x7f0707aa    # @dimen/media_output_dialog_list_item_height '76.0dp'

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result p1

    .line 74
    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mItemHeight:I

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object p1

    .line 80
    const p2, 0x7f0707ac    # @dimen/media_output_dialog_list_padding_top '8.0dp'

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    move-result p1

    .line 87
    iput p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mListPaddingTop:I

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 90
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mExecutor:Ljava/util/concurrent/Executor;

    .line 94
    return-void
    .line 96
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDismissing:Z

    .line 3
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    return-void
    .line 8
.end method

.method public abstract getAppSourceIcon()Landroidx/core/graphics/drawable/IconCompat;
.end method

.method public getBroadcastIconVisibility()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    return p0
    .line 4
.end method

.method public abstract getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
.end method

.method public abstract getHeaderIconRes()V
.end method

.method public abstract getHeaderIconSize()I
.end method

.method public abstract getHeaderSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getHeaderText()Ljava/lang/CharSequence;
.end method

.method public getStopButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f130589    # @string/keyboard_key_media_stop 'Stop'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public abstract getStopButtonVisibility()I
.end method

.method public handleLeBroadcastMetadataChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->startLeBroadcastDialog()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 12
    return-void
    .line 15
.end method

.method public handleLeBroadcastStartFailed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 2
    const v1, 0x7f1306ed    # @string/media_output_broadcast_start_failed 'Can’t broadcast'

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 16
    return-void
    .line 19
.end method

.method public handleLeBroadcastStarted()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 3
    return-void
    .line 5
.end method

.method public handleLeBroadcastStopFailed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 2
    return-void
    .line 5
.end method

.method public handleLeBroadcastStopped()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mShouldLaunchLeBroadcastDialog:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 5
    return-void
    .line 8
.end method

.method public handleLeBroadcastUpdateFailed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 2
    return-void
    .line 5
.end method

.method public handleLeBroadcastUpdated()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 2
    return-void
    .line 5
.end method

.method public abstract isBroadcastSupported()Z
.end method

.method public onBroadcastIconClick()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    move-result-object p1

    .line 10
    const v0, 0x7f0d0181    # @layout/media_output_dialog 'res/layout/media_output_dialog.xml'

    .line 11
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 19
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    move-result-object v0

    .line 28
    const/16 v1, 0x11

    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 31
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    .line 33
    move-result v1

    .line 36
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 37
    move-result v2

    .line 40
    or-int/2addr v1, v2

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 42
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 49
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 64
    const v2, 0x7f1306f2    # @string/media_output_dialog_accessibility_title 'Available devices for audio output.'

    .line 66
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 76
    const v0, 0x7f0a03ec    # @id/header_title

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 81
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/TextView;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 89
    const v0, 0x7f0a03eb    # @id/header_subtitle

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 94
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/TextView;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    .line 100
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 102
    const v0, 0x7f0a03e9    # @id/header_icon

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 107
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/ImageView;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    .line 113
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 115
    const v0, 0x7f0a0503    # @id/list_result

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 120
    move-result-object p1

    .line 123
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 128
    const v0, 0x7f0a058c    # @id/media_metadata_section

    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 133
    move-result-object p1

    .line 136
    check-cast p1, Landroid/widget/LinearLayout;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaMetadataSectionLayout:Landroid/widget/LinearLayout;

    .line 139
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 141
    const v0, 0x7f0a02c0    # @id/device_list

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 146
    move-result-object p1

    .line 149
    check-cast p1, Landroid/widget/LinearLayout;

    .line 150
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayout:Landroid/widget/LinearLayout;

    .line 152
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 154
    const v0, 0x7f0a02eb    # @id/done

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 159
    move-result-object p1

    .line 162
    check-cast p1, Landroid/widget/Button;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    .line 165
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 167
    const v0, 0x7f0a08f2    # @id/stop

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 172
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/Button;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 178
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 180
    const v0, 0x7f0a04b5    # @id/launch_app_button

    .line 182
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 185
    move-result-object p1

    .line 188
    check-cast p1, Landroid/widget/Button;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppButton:Landroid/widget/Button;

    .line 191
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 193
    const v0, 0x7f0a00d4    # @id/app_source_icon

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 198
    move-result-object p1

    .line 201
    check-cast p1, Landroid/widget/ImageView;

    .line 202
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    .line 204
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 206
    const v0, 0x7f0a01ce    # @id/cast_app_section

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 211
    move-result-object p1

    .line 214
    check-cast p1, Landroid/widget/LinearLayout;

    .line 215
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mCastAppLayout:Landroid/widget/LinearLayout;

    .line 217
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 219
    const v0, 0x7f0a0166    # @id/broadcast_icon

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 224
    move-result-object p1

    .line 227
    check-cast p1, Landroid/widget/ImageView;

    .line 228
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastIcon:Landroid/widget/ImageView;

    .line 230
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayout:Landroid/widget/LinearLayout;

    .line 232
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 234
    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayoutListener:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda0;

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 240
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mLayoutManager:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$LayoutManagerWrapper;

    .line 243
    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 245
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 247
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 252
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 254
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 256
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    const/4 v0, 0x0

    .line 261
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 262
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    .line 265
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    .line 267
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 269
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 275
    new-instance v2, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    .line 277
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    .line 279
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppButton:Landroid/widget/Button;

    .line 285
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 287
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v3, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda3;

    .line 292
    invoke-direct {v3, v2, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;I)V

    .line 294
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaMetadataSectionLayout:Landroid/widget/LinearLayout;

    .line 300
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 302
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v3, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda3;

    .line 307
    invoke-direct {v3, v2, v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;I)V

    .line 309
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDismissing:Z

    .line 315
    return-void
    .line 317
.end method

.method public abstract onStopButtonClick()V
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh(Z)V

    return-void
.end method

.method public final refresh(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDismissing:Z

    if-nez v1, :cond_11

    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 3
    iget-boolean v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    if-eqz v2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderIconRes()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getAppSourceIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    .line 8
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mCastAppLayout:Landroid/widget/LinearLayout;

    .line 9
    iget-object v5, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    .line 10
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    .line 11
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v7

    if-eq v7, v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateButtonBackgroundColorFilter()V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateDialogBackgroundColor()V

    const/4 v9, 0x0

    goto/16 :goto_5

    .line 15
    :cond_1
    iget-object v7, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 16
    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    const/16 v8, 0x20

    if-ne v7, v8, :cond_2

    move v7, v2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 17
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v8

    .line 18
    invoke-virtual {v8, v6}, Landroid/app/WallpaperColors;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v2

    if-eqz v9, :cond_8

    .line 19
    iget-object v10, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 20
    iget-object v10, v10, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 21
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object v11, Lcom/android/systemui/monet/Style;->TONAL_SPOT:Lcom/android/systemui/monet/Style;

    .line 23
    sget-object v12, Lcom/android/systemui/monet/Style;->CONTENT:Lcom/android/systemui/monet/Style;

    if-eq v11, v12, :cond_3

    move v13, v2

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 24
    :goto_1
    invoke-static {v8, v13}, Lcom/android/systemui/monet/ColorScheme$Companion;->getSeedColors(Landroid/app/WallpaperColors;Z)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 25
    invoke-static {v8}, Lcom/android/internal/graphics/cam/Cam;->fromInt(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v13

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    if-eq v11, v12, :cond_5

    .line 26
    invoke-virtual {v13}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    :goto_2
    const v8, -0xe4910d

    .line 27
    :cond_5
    new-instance v12, Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/Style;->getCoreSpec$packages__apps__MiuiSystemUI__packages__SystemUI__monet__android_common__Miuimonet()Lcom/android/systemui/monet/CoreSpec;

    move-result-object v13

    .line 28
    iget-object v13, v13, Lcom/android/systemui/monet/CoreSpec;->a1:Lcom/android/systemui/monet/TonalSpec;

    .line 29
    invoke-direct {v12, v13, v8}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/android/systemui/monet/TonalSpec;I)V

    .line 30
    new-instance v13, Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/Style;->getCoreSpec$packages__apps__MiuiSystemUI__packages__SystemUI__monet__android_common__Miuimonet()Lcom/android/systemui/monet/CoreSpec;

    move-result-object v14

    .line 31
    iget-object v14, v14, Lcom/android/systemui/monet/CoreSpec;->a2:Lcom/android/systemui/monet/TonalSpec;

    .line 32
    invoke-direct {v13, v14, v8}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/android/systemui/monet/TonalSpec;I)V

    .line 33
    new-instance v14, Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/Style;->getCoreSpec$packages__apps__MiuiSystemUI__packages__SystemUI__monet__android_common__Miuimonet()Lcom/android/systemui/monet/CoreSpec;

    move-result-object v15

    .line 34
    iget-object v15, v15, Lcom/android/systemui/monet/CoreSpec;->a3:Lcom/android/systemui/monet/TonalSpec;

    .line 35
    invoke-direct {v14, v15, v8}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/android/systemui/monet/TonalSpec;I)V

    .line 36
    new-instance v14, Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/Style;->getCoreSpec$packages__apps__MiuiSystemUI__packages__SystemUI__monet__android_common__Miuimonet()Lcom/android/systemui/monet/CoreSpec;

    move-result-object v15

    .line 37
    iget-object v15, v15, Lcom/android/systemui/monet/CoreSpec;->n1:Lcom/android/systemui/monet/TonalSpec;

    .line 38
    invoke-direct {v14, v15, v8}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/android/systemui/monet/TonalSpec;I)V

    .line 39
    new-instance v15, Lcom/android/systemui/monet/TonalPalette;

    invoke-virtual {v11}, Lcom/android/systemui/monet/Style;->getCoreSpec$packages__apps__MiuiSystemUI__packages__SystemUI__monet__android_common__Miuimonet()Lcom/android/systemui/monet/CoreSpec;

    move-result-object v11

    .line 40
    iget-object v11, v11, Lcom/android/systemui/monet/CoreSpec;->n2:Lcom/android/systemui/monet/TonalSpec;

    .line 41
    invoke-direct {v15, v11, v8}, Lcom/android/systemui/monet/TonalPalette;-><init>(Lcom/android/systemui/monet/TonalSpec;I)V

    const/4 v8, 0x7

    const/4 v11, 0x4

    iget-object v6, v12, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    iget-object v5, v13, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    iget-object v4, v14, Lcom/android/systemui/monet/TonalPalette;->allShades:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 42
    invoke-virtual {v12}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v7

    iput v7, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 43
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 44
    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    .line 45
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 46
    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    .line 47
    invoke-virtual {v15}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v5

    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    .line 48
    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v5

    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    .line 49
    invoke-virtual {v13}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v5

    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    const/16 v5, 0xa

    .line 50
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 51
    iput v4, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    goto :goto_4

    .line 52
    :cond_6
    invoke-virtual {v12}, Lcom/android/systemui/monet/TonalPalette;->getS800()I

    move-result v13

    iput v13, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 53
    move-object v13, v6

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 54
    iput v11, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorSeekbarProgress:I

    .line 55
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 56
    iput v6, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    .line 57
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 58
    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemBackground:I

    .line 59
    invoke-virtual {v12}, Lcom/android/systemui/monet/TonalPalette;->getS100()I

    move-result v5

    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorConnectedItemBackground:I

    .line 60
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 61
    iput v5, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    if-eqz v7, :cond_7

    .line 62
    invoke-virtual {v14}, Lcom/android/systemui/monet/TonalPalette;->getS700()I

    move-result v4

    goto :goto_3

    .line 63
    :cond_7
    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    :goto_3
    const/16 v5, 0xff

    .line 64
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 65
    iput v4, v10, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    .line 66
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateButtonBackgroundColorFilter()V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateDialogBackgroundColor()V

    .line 68
    :cond_8
    :goto_5
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_6

    .line 70
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateButtonBackgroundColorFilter()V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->updateDialogBackgroundColor()V

    .line 72
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v9, 0x0

    :goto_6
    if-eqz v3, :cond_a

    .line 73
    invoke-virtual {v3}, Landroidx/core/graphics/drawable/IconCompat;->toIcon$1()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 74
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 75
    iget v4, v4, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorItemContent:I

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 77
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_9

    .line 78
    :cond_a
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    const-string v3, "MediaOutputController"

    .line 79
    iget-object v4, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    :try_start_0
    const-string/jumbo v4, "try to get app icon"

    .line 81
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const-string v1, "icon not found"

    .line 84
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_c

    .line 85
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 86
    :cond_c
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppResourceIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :goto_9
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderIconSize()I

    move-result v1

    .line 89
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707a8    # @dimen/media_output_dialog_header_icon_padding '16.0dp'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 90
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderIcon:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    add-int/2addr v3, v1

    invoke-direct {v5, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_d
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAppButton:Landroid/widget/Button;

    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    invoke-virtual {v3}, Lcom/android/systemui/media/dialog/MediaOutputController;->getAppSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getHeaderSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 95
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    const v3, 0x800013

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_a

    .line 97
    :cond_e
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    :goto_a
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getStopButtonVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getStopButtonText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastIcon:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->getBroadcastIconVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 107
    iget-boolean v3, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mIsDragging:Z

    if-nez v3, :cond_10

    .line 108
    iget v2, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mCurrentActivePosition:I

    if-nez v9, :cond_f

    if-nez p1, :cond_f

    if-ltz v2, :cond_f

    .line 109
    invoke-virtual {v1}, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->getItemCount()I

    move-result v1

    if-ge v2, v1, :cond_f

    .line 110
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_b

    .line 111
    :cond_f
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mAdapter:Lcom/android/systemui/media/dialog/MediaOutputAdapter;

    .line 112
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputAdapter;->mMediaItemList:Ljava/util/List;

    .line 113
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 114
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseAdapter;->mController:Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_b

    .line 117
    :cond_10
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mIsRefreshing:Z

    .line 119
    iget-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    if-eqz v1, :cond_11

    .line 120
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaItems(Ljava/util/List;)V

    .line 121
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    check-cast v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;

    .line 122
    iget-object v3, v1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMainThreadHandler:Landroid/os/Handler;

    .line 123
    new-instance v4, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNeedRefresh:Z

    :cond_11
    :goto_b
    return-void
.end method

.method public start()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    .line 7
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 11
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 14
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 22
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 26
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget-object v2, v1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->providers:Ljava/util/List;

    .line 33
    check-cast v2, Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 40
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Landroid/media/INearbyMediaDevicesProvider;

    .line 51
    invoke-interface {v3, v0}, Landroid/media/INearbyMediaDevicesProvider;->registerNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, v1, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->activeCallbacks:Ljava/util/List;

    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v1

    .line 69
    if-nez v1, :cond_7

    .line 70
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 72
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 74
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 76
    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v1

    .line 83
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v2

    .line 87
    if-eqz v2, :cond_3

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 94
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 96
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 98
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/app/Notification;->isMediaNotification()Z

    .line 102
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 108
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 110
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 112
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 114
    move-result v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    iget-object v1, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 120
    const-string v2, "android.mediaSession"

    .line 122
    const-class v3, Landroid/media/session/MediaSession$Token;

    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 129
    check-cast v1, Landroid/media/session/MediaSession$Token;

    .line 130
    new-instance v2, Landroid/media/session/MediaController;

    .line 132
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 134
    invoke-direct {v2, v3, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 136
    goto :goto_1

    .line 139
    :cond_3
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 140
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 142
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 144
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 146
    move-result-object v2

    .line 149
    const/4 v3, 0x0

    .line 150
    invoke-virtual {v1, v3, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/List;

    .line 151
    move-result-object v1

    .line 154
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v1

    .line 158
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v2

    .line 162
    if-eqz v2, :cond_5

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v2

    .line 168
    check-cast v2, Landroid/media/session/MediaController;

    .line 169
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 174
    iget-object v5, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 175
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 177
    move-result v4

    .line 180
    if-eqz v4, :cond_4

    .line 181
    goto :goto_1

    .line 183
    :cond_5
    move-object v2, v3

    .line 184
    :goto_1
    iput-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 185
    if-eqz v2, :cond_7

    .line 187
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    .line 189
    invoke-virtual {v2, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 191
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 194
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 196
    move-result-object v1

    .line 199
    if-eqz v1, :cond_6

    .line 200
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 202
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 204
    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 208
    move-result v1

    .line 211
    iput v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCurrentState:I

    .line 212
    :cond_6
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 214
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    .line 216
    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 218
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 221
    if-nez v1, :cond_8

    .line 223
    sget-boolean v1, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    .line 225
    if-eqz v1, :cond_8

    .line 227
    const-string v1, "MediaOutputController"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 231
    const-string v3, "No media controller for "

    .line 233
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    iget-object v3, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 238
    invoke-static {v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_8
    iput-object p0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 243
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 245
    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 247
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 249
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 254
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->isBroadcastSupported()Z

    .line 259
    move-result v0

    .line 262
    if-eqz v0, :cond_b

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIsLeBroadcastCallbackRegistered:Z

    .line 265
    if-nez v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 269
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mExecutor:Ljava/util/concurrent/Executor;

    .line 271
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 273
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 275
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 277
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 279
    const-string v3, "MediaOutputController"

    .line 281
    if-nez v0, :cond_9

    .line 283
    const-string v0, "The broadcast profile is null"

    .line 285
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    goto :goto_2

    .line 290
    :cond_9
    const-string v4, "Register LE broadcast callback"

    .line 291
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 296
    if-nez v0, :cond_a

    .line 298
    const-string v0, "LocalBluetoothLeBroadcast"

    .line 300
    const-string v1, "The BluetoothLeBroadcast is null."

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    goto :goto_2

    .line 307
    :cond_a
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothLeBroadcast;->registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 308
    :goto_2
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIsLeBroadcastCallbackRegistered:Z

    .line 312
    :cond_b
    return-void

    .line 314
    :catchall_0
    move-exception p0

    .line 315
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    throw p0
    .line 317
.end method

.method public final startLeBroadcastDialog()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v15, Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 11
    iget-object v4, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 13
    iget-object v5, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 15
    iget-object v6, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 17
    iget-object v7, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 19
    iget-object v8, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 21
    iget-object v9, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 23
    iget-object v10, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 25
    iget-object v3, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 27
    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 29
    move-result-object v11

    .line 32
    iget-object v12, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mAudioManager:Landroid/media/AudioManager;

    .line 33
    iget-object v13, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 35
    iget-object v14, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 37
    iget-object v3, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 39
    iget-object v0, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 41
    move-object/from16 v16, v3

    .line 43
    move-object v3, v15

    .line 45
    move-object/from16 v17, v15

    .line 46
    move-object/from16 v15, v16

    .line 48
    move-object/from16 v16, v0

    .line 50
    invoke-direct/range {v3 .. v16}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V

    .line 52
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 55
    iget-object v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 57
    move-object/from16 v3, v17

    .line 59
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->refresh()V

    .line 67
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->isBroadcastSupported()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIsLeBroadcastCallbackRegistered:Z

    .line 8
    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mBroadcastCallback:Lcom/android/systemui/media/dialog/MediaOutputBaseDialog$1;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 16
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 18
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    .line 20
    const-string v2, "MediaOutputController"

    .line 22
    if-nez v0, :cond_0

    .line 24
    const-string v0, "The broadcast profile is null"

    .line 26
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    const-string v3, "Unregister LE broadcast callback"

    .line 32
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mService:Landroid/bluetooth/BluetoothLeBroadcast;

    .line 37
    if-nez v0, :cond_1

    .line 39
    const-string v0, "LocalBluetoothLeBroadcast"

    .line 41
    const-string v1, "The BluetoothLeBroadcast is null."

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothLeBroadcast;->unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 49
    :goto_0
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mIsLeBroadcastCallbackRegistered:Z

    .line 53
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 57
    if-eqz v0, :cond_3

    .line 59
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    .line 61
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 66
    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 68
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 75
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevicesLock:Ljava/lang/Object;

    .line 80
    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCachedMediaDevices:Ljava/util/List;

    .line 83
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaItemList:Ljava/util/List;

    .line 90
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyMediaDevicesManager:Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;

    .line 98
    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;->unregisterNearbyDevicesCallback(Landroid/media/INearbyMediaDevicesUpdateCallback;)V

    .line 102
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNearbyDeviceInfoMap:Ljava/util/Map;

    .line 105
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 109
    return-void

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p0
    .line 115
.end method

.method public final updateButtonBackgroundColorFilter()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 4
    iget v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorButtonBackground:I

    .line 6
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    .line 13
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 19
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mStopButton:Landroid/widget/Button;

    .line 22
    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDoneButton:Landroid/widget/Button;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 33
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorPositiveButtonText:I

    .line 35
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 37
    return-void
    .line 40
.end method

.method public final updateDialogBackgroundColor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDialogView:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 8
    iget v1, v1, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mDeviceListLayout:Landroid/widget/LinearLayout;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mMediaOutputController:Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 17
    iget p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mColorDialogBackground:I

    .line 19
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 21
    return-void
.end method
