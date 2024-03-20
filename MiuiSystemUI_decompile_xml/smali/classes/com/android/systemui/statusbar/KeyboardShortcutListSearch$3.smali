.class public final Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mQueryString:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 7
    const-class v2, Landroid/view/LayoutInflater;

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Landroid/view/LayoutInflater;

    .line 15
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 17
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 24
    const v2, 0x7f0d00f6    # @layout/keyboard_shortcuts_search_view 'res/layout/keyboard_shortcuts_search_view.xml'

    .line 26
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    const v1, 0x7f0a087b    # @id/shortcut_search_no_result

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mNoSearchResults:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 46
    const v1, 0x7f0a087d    # @id/shortcut_system

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/Button;

    .line 56
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonSystem:Landroid/widget/Button;

    .line 58
    const v1, 0x7f0a0879    # @id/shortcut_input

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v1

    .line 66
    check-cast v1, Landroid/widget/Button;

    .line 67
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonInput:Landroid/widget/Button;

    .line 69
    const v1, 0x7f0a087a    # @id/shortcut_open_apps

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    move-result-object v1

    .line 77
    check-cast v1, Landroid/widget/Button;

    .line 78
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonOpenApps:Landroid/widget/Button;

    .line 80
    const v1, 0x7f0a087c    # @id/shortcut_specific_app

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/Button;

    .line 89
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonSpecificApp:Landroid/widget/Button;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonSystem:Landroid/widget/Button;

    .line 93
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;

    .line 95
    const/4 v3, 0x0

    .line 97
    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Landroid/view/View;I)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonInput:Landroid/widget/Button;

    .line 104
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;

    .line 106
    const/4 v3, 0x1

    .line 108
    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Landroid/view/View;I)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonOpenApps:Landroid/widget/Button;

    .line 115
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;

    .line 117
    const/4 v4, 0x2

    .line 119
    invoke-direct {v2, p0, v0, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Landroid/view/View;I)V

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonSpecificApp:Landroid/widget/Button;

    .line 126
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;

    .line 128
    const/4 v4, 0x3

    .line 130
    invoke-direct {v2, p0, v0, v4}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Landroid/view/View;I)V

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mFullButtonList:Ljava/util/ArrayList;

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonSystem:Landroid/widget/Button;

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonInput:Landroid/widget/Button;

    .line 144
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonOpenApps:Landroid/widget/Button;

    .line 149
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mButtonSpecificApp:Landroid/widget/Button;

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const v1, 0x7f0a0468    # @id/keyboard_shortcuts_container

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v1

    .line 165
    check-cast v1, Landroid/widget/LinearLayout;

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->populateKeyboardShortcutSearchList(Landroid/widget/LinearLayout;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 171
    const v2, 0x7f0a02ab    # @id/design_bottom_sheet

    .line 173
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    .line 176
    move-result-object v1

    .line 179
    check-cast v1, Landroid/widget/FrameLayout;

    .line 180
    if-eqz v1, :cond_0

    .line 182
    const v2, 0x106000d    # @android:color/transparent

    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 187
    :cond_0
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 190
    move-result-object v1

    .line 193
    invoke-virtual {v1, v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 194
    iput-boolean v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    .line 197
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$4;

    .line 199
    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 201
    const-string v4, "BottomSheetBehavior"

    .line 204
    const-string v5, "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks."

    .line 206
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 219
    invoke-virtual {v1, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 224
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 226
    move-result-object v1

    .line 229
    const/16 v2, 0x7d8

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 232
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sLock:Ljava/lang/Object;

    .line 235
    monitor-enter v1

    .line 237
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;

    .line 238
    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mKeyboardShortcutsBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 242
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->setDialogScreenSize()V

    .line 247
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$5;

    .line 250
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$5;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;)V

    .line 252
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 255
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const v1, 0x7f0a046d    # @id/keyboard_shortcuts_search

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    move-result-object v1

    .line 265
    check-cast v1, Landroid/widget/EditText;

    .line 266
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;->mSearchEditText:Landroid/widget/EditText;

    .line 268
    new-instance v2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;

    .line 270
    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$6;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;Landroid/view/View;)V

    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    const v1, 0x7f0a046e    # @id/keyboard_shortcuts_search_cancel

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 281
    move-result-object v0

    .line 284
    check-cast v0, Landroid/widget/ImageView;

    .line 285
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda1;

    .line 287
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcutListSearch;)V

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void

    .line 295
    :catchall_0
    move-exception p0

    .line 296
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    throw p0
    .line 298
.end method
