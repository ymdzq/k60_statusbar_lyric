.class public abstract Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static bind$default(Landroid/view/ViewGroup;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/AuthPanelController;Z)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    move-object/from16 v14, p1

    .line 4
    const-wide/16 v10, 0xbb8

    .line 6
    const/16 v16, 0x1

    .line 8
    const v0, 0x7f0a09a2    # @id/id_0x7f0a09a2

    .line 10
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 16
    move-object v4, v0

    .line 17
    check-cast v4, Landroid/widget/TextView;

    .line 18
    const v0, 0x7f0a08ff    # @id/subtitle

    .line 20
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    move-object v6, v0

    .line 27
    check-cast v6, Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0a02a8    # @id/description

    .line 30
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    move-object v7, v0

    .line 37
    check-cast v7, Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0a0412    # @id/icon

    .line 40
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    move-object v8, v0

    .line 47
    check-cast v8, Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0a033d    # @id/error

    .line 50
    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    move-object v12, v0

    .line 57
    check-cast v12, Landroid/widget/TextView;

    .line 58
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 60
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 62
    new-instance v13, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;

    .line 65
    const/16 v17, 0x0

    .line 67
    move-object v0, v13

    .line 69
    move/from16 v1, p4

    .line 70
    move-object/from16 v2, p3

    .line 72
    move-object/from16 v3, p2

    .line 74
    move-object/from16 v5, p0

    .line 76
    move-object/from16 v18, v13

    .line 78
    move-object/from16 v13, p1

    .line 80
    move-object/from16 v14, v17

    .line 82
    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1;-><init>(ZLcom/android/systemui/biometrics/AuthPanelController;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 84
    move-object/from16 v0, v18

    .line 87
    invoke-static {v15, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 89
    instance-of v0, v15, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 92
    if-eqz v0, :cond_0

    .line 94
    move-object v9, v15

    .line 96
    check-cast v9, Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    .line 97
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 99
    move-result-object v0

    .line 102
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    move-object v6, v0

    .line 112
    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    const v0, 0x7f0a050d    # @id/lockPassword

    .line 115
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 121
    move-object v2, v0

    .line 122
    check-cast v2, Landroid/widget/ImeAwareEditText;

    .line 123
    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$onBackInvokedCallback$1;

    .line 125
    move-object/from16 v7, p1

    .line 127
    invoke-direct {v5, v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$onBackInvokedCallback$1;-><init>(Lcom/android/systemui/biometrics/ui/CredentialView$Host;)V

    .line 129
    new-instance v10, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;

    .line 132
    const/4 v8, 0x0

    .line 134
    move-object v0, v10

    .line 135
    move/from16 v1, v16

    .line 136
    move-object v3, v9

    .line 138
    move-object/from16 v4, p2

    .line 139
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;-><init>(ZLandroid/widget/ImeAwareEditText;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/window/OnBackInvokedCallback;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 141
    invoke-static {v9, v10}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 144
    goto :goto_0

    .line 147
    :cond_0
    move-object/from16 v7, p1

    .line 148
    instance-of v0, v15, Lcom/android/systemui/biometrics/ui/CredentialPatternView;

    .line 150
    if-eqz v0, :cond_1

    .line 152
    move-object v0, v15

    .line 154
    check-cast v0, Lcom/android/systemui/biometrics/ui/CredentialPatternView;

    .line 155
    const v1, 0x7f0a050e    # @id/lockPattern

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    .line 160
    move-result-object v1

    .line 163
    check-cast v1, Lcom/android/internal/widget/LockPatternView;

    .line 164
    new-instance v2, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;

    .line 166
    const/4 v3, 0x0

    .line 168
    move-object/from16 v4, p2

    .line 169
    invoke-direct {v2, v4, v1, v7, v3}, Lcom/android/systemui/biometrics/ui/binder/CredentialPatternViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/internal/widget/LockPatternView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    .line 171
    invoke-static {v0, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 174
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 178
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 187
    const-string/jumbo v2, "unexpected view type: "

    .line 188
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    throw v0
    .line 198
.end method
