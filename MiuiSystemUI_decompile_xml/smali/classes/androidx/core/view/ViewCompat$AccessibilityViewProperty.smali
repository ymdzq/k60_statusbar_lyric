.class public abstract Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mContentChangeType:I

.field public final mFrameworkMinimumSdk:I

.field public final mTagKey:I

.field public final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    .line 5
    iput-object p2, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mType:Ljava/lang/Class;

    .line 7
    iput p3, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mContentChangeType:I

    .line 9
    iput p4, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    .line 11
    return-void
    .line 13
.end method

.method public static booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    move p0, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p0, v1

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    move p1, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move p1, v1

    .line 25
    :goto_1
    if-ne p0, p1, :cond_2

    .line 26
    goto :goto_2

    .line 28
    :cond_2
    move v0, v1

    .line 29
    :goto_2
    return v0
    .line 30
.end method


# virtual methods
.method public final get(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    iget v1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    .line 4
    if-lt v0, v1, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Landroidx/core/view/ViewCompat$1;

    .line 13
    iget v0, p0, Landroidx/core/view/ViewCompat$1;->$r8$classId:I

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 17
    goto :goto_3

    .line 20
    :pswitch_0
    packed-switch v0, :pswitch_data_1

    .line 21
    goto :goto_1

    .line 24
    :pswitch_1
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 25
    move-result-object p0

    .line 28
    goto :goto_4

    .line 29
    :goto_1
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api30Impl;->getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 30
    move-result-object p0

    .line 33
    goto :goto_4

    .line 34
    :pswitch_2
    packed-switch v0, :pswitch_data_2

    .line 35
    goto :goto_2

    .line 38
    :pswitch_3
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 39
    move-result-object p0

    .line 42
    goto :goto_4

    .line 43
    :goto_2
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api30Impl;->getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 44
    move-result-object p0

    .line 47
    goto :goto_4

    .line 48
    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$1;->frameworkGet(Landroid/view/View;)Ljava/lang/Boolean;

    .line 49
    move-result-object p0

    .line 52
    goto :goto_4

    .line 53
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$1;->frameworkGet(Landroid/view/View;)Ljava/lang/Boolean;

    .line 54
    move-result-object p0

    .line 57
    :goto_4
    return-object p0

    .line 58
    :cond_1
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 61
    move-result-object p1

    .line 64
    iget-object p0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mType:Ljava/lang/Class;

    .line 65
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 67
    move-result p0

    .line 70
    if-eqz p0, :cond_2

    .line 71
    return-object p1

    .line 73
    :cond_2
    const/4 p0, 0x0

    .line 74
    return-object p0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 76
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 86
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
    .line 92
.end method

.method public final set(Landroid/view/View;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    iget v1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    check-cast p0, Landroidx/core/view/ViewCompat$1;

    .line 14
    iget p0, p0, Landroidx/core/view/ViewCompat$1;->$r8$classId:I

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 18
    goto :goto_4

    .line 21
    :pswitch_0
    check-cast p2, Ljava/lang/CharSequence;

    .line 22
    packed-switch p0, :pswitch_data_1

    .line 24
    goto :goto_1

    .line 27
    :pswitch_1
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 28
    goto/16 :goto_e

    .line 31
    :goto_1
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api30Impl;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 33
    goto/16 :goto_e

    .line 36
    :pswitch_2
    check-cast p2, Ljava/lang/CharSequence;

    .line 38
    packed-switch p0, :pswitch_data_2

    .line 40
    goto :goto_2

    .line 43
    :pswitch_3
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 44
    goto/16 :goto_e

    .line 47
    :goto_2
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api30Impl;->setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 49
    goto/16 :goto_e

    .line 52
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    .line 54
    packed-switch p0, :pswitch_data_3

    .line 56
    goto :goto_3

    .line 59
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    move-result p0

    .line 63
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api28Impl;->setScreenReaderFocusable(Landroid/view/View;Z)V

    .line 64
    goto/16 :goto_e

    .line 67
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    move-result p0

    .line 72
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityHeading(Landroid/view/View;Z)V

    .line 73
    goto/16 :goto_e

    .line 76
    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    .line 78
    packed-switch p0, :pswitch_data_4

    .line 80
    goto :goto_5

    .line 83
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    move-result p0

    .line 87
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api28Impl;->setScreenReaderFocusable(Landroid/view/View;Z)V

    .line 88
    goto/16 :goto_e

    .line 91
    :goto_5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 93
    move-result p0

    .line 96
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityHeading(Landroid/view/View;Z)V

    .line 97
    goto/16 :goto_e

    .line 100
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    .line 102
    move-result-object v0

    .line 105
    move-object v1, p0

    .line 106
    check-cast v1, Landroidx/core/view/ViewCompat$1;

    .line 107
    iget v1, v1, Landroidx/core/view/ViewCompat$1;->$r8$classId:I

    .line 109
    packed-switch v1, :pswitch_data_5

    .line 111
    goto :goto_a

    .line 114
    :pswitch_7
    check-cast v0, Ljava/lang/CharSequence;

    .line 115
    move-object v3, p2

    .line 117
    check-cast v3, Ljava/lang/CharSequence;

    .line 118
    packed-switch v1, :pswitch_data_6

    .line 120
    goto :goto_6

    .line 123
    :pswitch_8
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 124
    move-result v0

    .line 127
    goto :goto_7

    .line 128
    :goto_6
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 129
    move-result v0

    .line 132
    :goto_7
    xor-int/2addr v0, v2

    .line 133
    goto :goto_c

    .line 134
    :pswitch_9
    check-cast v0, Ljava/lang/CharSequence;

    .line 135
    move-object v3, p2

    .line 137
    check-cast v3, Ljava/lang/CharSequence;

    .line 138
    packed-switch v1, :pswitch_data_7

    .line 140
    goto :goto_8

    .line 143
    :pswitch_a
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    move-result v0

    .line 147
    goto :goto_7

    .line 148
    :goto_8
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 149
    move-result v0

    .line 152
    goto :goto_7

    .line 153
    :pswitch_b
    check-cast v0, Ljava/lang/Boolean;

    .line 154
    move-object v3, p2

    .line 156
    check-cast v3, Ljava/lang/Boolean;

    .line 157
    packed-switch v1, :pswitch_data_8

    .line 159
    goto :goto_9

    .line 162
    :pswitch_c
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 163
    move-result v0

    .line 166
    goto :goto_7

    .line 167
    :goto_9
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 168
    move-result v0

    .line 171
    goto :goto_7

    .line 172
    :goto_a
    check-cast v0, Ljava/lang/Boolean;

    .line 173
    move-object v3, p2

    .line 175
    check-cast v3, Ljava/lang/Boolean;

    .line 176
    packed-switch v1, :pswitch_data_9

    .line 178
    goto :goto_b

    .line 181
    :pswitch_d
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 182
    move-result v0

    .line 185
    goto :goto_7

    .line 186
    :goto_b
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 187
    move-result v0

    .line 190
    goto :goto_7

    .line 191
    :goto_c
    if-eqz v0, :cond_5

    .line 192
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 194
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api29Impl;->getAccessibilityDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 196
    move-result-object v0

    .line 199
    if-nez v0, :cond_2

    .line 200
    const/4 v0, 0x0

    .line 202
    goto :goto_d

    .line 203
    :cond_2
    instance-of v1, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 204
    if-eqz v1, :cond_3

    .line 206
    check-cast v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 208
    iget-object v0, v0, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 210
    goto :goto_d

    .line 212
    :cond_3
    new-instance v1, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 213
    invoke-direct {v1, v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 215
    move-object v0, v1

    .line 218
    :goto_d
    if-nez v0, :cond_4

    .line 219
    new-instance v0, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 221
    invoke-direct {v0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 223
    :cond_4
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 226
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    .line 229
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 231
    iget p0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mContentChangeType:I

    .line 234
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(ILandroid/view/View;)V

    .line 236
    :cond_5
    :goto_e
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 250
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 256
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    .line 262
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    .line 268
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
    .end packed-switch

    .line 274
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    .line 284
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    .line 290
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    .line 296
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
    .line 302
.end method
