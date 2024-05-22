.class public final Landroidx/appcompat/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public groupCategory:I

.field public groupCheckable:I

.field public groupEnabled:Z

.field public groupId:I

.field public groupOrder:I

.field public groupVisible:Z

.field public itemActionProvider:Landroidx/core/view/ActionProvider;

.field public itemActionViewClassName:Ljava/lang/String;

.field public itemActionViewLayout:I

.field public itemAdded:Z

.field public itemAlphabeticModifiers:I

.field public itemAlphabeticShortcut:C

.field public itemCategoryOrder:I

.field public itemCheckable:I

.field public itemChecked:Z

.field public itemContentDescription:Ljava/lang/CharSequence;

.field public itemEnabled:Z

.field public itemIconResId:I

.field public itemIconTintList:Landroid/content/res/ColorStateList;

.field public itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public itemId:I

.field public itemListenerMethodName:Ljava/lang/String;

.field public itemNumericModifiers:I

.field public itemNumericShortcut:C

.field public itemShowAsAction:I

.field public itemTitle:Ljava/lang/CharSequence;

.field public itemTitleCondensed:Ljava/lang/CharSequence;

.field public itemTooltipText:Ljava/lang/CharSequence;

.field public itemVisible:Z

.field public final menu:Landroid/view/Menu;

.field public final synthetic this$0:Landroidx/appcompat/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 8
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 10
    iput-object p2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 12
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupId:I

    .line 15
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 17
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 19
    iput p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 21
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 24
    iput-boolean p1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 2
    iget-object p0, p0, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    move-result-object p0

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 20
    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    const-string p3, "Cannot instantiate class: "

    .line 31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    const-string p2, "SupportMenuInflater"

    .line 43
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    const/4 p0, 0x0

    .line 48
    return-object p0
    .line 49
.end method

.method public final setItem(Landroid/view/MenuItem;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 8
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 10
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 14
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 16
    move-result-object v0

    .line 19
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 20
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt v1, v3, :cond_0

    .line 24
    move v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 29
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 33
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 35
    move-result-object v0

    .line 38
    iget v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 39
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 41
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 44
    if-ltz v0, :cond_1

    .line 46
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 48
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->this$0:Landroidx/appcompat/view/SupportMenuInflater;

    .line 53
    if-eqz v0, :cond_4

    .line 55
    iget-object v0, v1, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    .line 59
    move-result v0

    .line 62
    if-nez v0, :cond_3

    .line 63
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    .line 65
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 67
    if-nez v4, :cond_2

    .line 69
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v4}, Landroidx/appcompat/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 76
    iput-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 77
    :cond_2
    iget-object v4, v1, Landroidx/appcompat/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 79
    iget-object v5, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 81
    invoke-direct {v0, v4, v5}, Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 86
    goto :goto_1

    .line 89
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 90
    const-string p1, "The android:onClick attribute cannot be used within a restricted context"

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    throw p0

    .line 97
    :cond_4
    :goto_1
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 98
    const/4 v4, 0x2

    .line 100
    if-lt v0, v4, :cond_7

    .line 101
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 103
    if-eqz v0, :cond_5

    .line 105
    move-object v0, p1

    .line 107
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 108
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 110
    goto :goto_2

    .line 113
    :cond_5
    instance-of v0, p1, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 114
    if-eqz v0, :cond_7

    .line 116
    move-object v0, p1

    .line 118
    check-cast v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    .line 119
    :try_start_0
    iget-object v4, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 121
    if-nez v4, :cond_6

    .line 123
    iget-object v4, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    .line 125
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    move-result-object v4

    .line 130
    const-string/jumbo v5, "setExclusiveCheckable"

    .line 131
    new-array v6, v3, [Ljava/lang/Class;

    .line 134
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 136
    aput-object v7, v6, v2

    .line 138
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 140
    move-result-object v4

    .line 143
    iput-object v4, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 144
    :cond_6
    iget-object v4, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mSetExclusiveCheckableMethod:Ljava/lang/reflect/Method;

    .line 146
    iget-object v0, v0, Landroidx/appcompat/view/menu/MenuItemWrapperICS;->mWrappedObject:Landroidx/core/internal/view/SupportMenuItem;

    .line 148
    new-array v5, v3, [Ljava/lang/Object;

    .line 150
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 152
    aput-object v6, v5, v2

    .line 154
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v4, "MenuItemWrapper"

    .line 161
    const-string v5, "Error while calling setExclusiveCheckable"

    .line 163
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 168
    if-eqz v0, :cond_8

    .line 170
    sget-object v2, Landroidx/appcompat/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 172
    iget-object v1, v1, Landroidx/appcompat/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 174
    invoke-virtual {p0, v0, v2, v1}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v0

    .line 179
    check-cast v0, Landroid/view/View;

    .line 180
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 182
    move v2, v3

    .line 185
    :cond_8
    iget v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 186
    if-lez v0, :cond_a

    .line 188
    if-nez v2, :cond_9

    .line 190
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 192
    goto :goto_3

    .line 195
    :cond_9
    const-string v0, "SupportMenuInflater"

    .line 196
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_a
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroidx/core/view/ActionProvider;

    .line 203
    if-eqz v0, :cond_c

    .line 205
    instance-of v1, p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 207
    if-eqz v1, :cond_b

    .line 209
    move-object v1, p1

    .line 211
    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    .line 212
    invoke-interface {v1, v0}, Landroidx/core/internal/view/SupportMenuItem;->setSupportActionProvider(Landroidx/core/view/ActionProvider;)Landroidx/core/internal/view/SupportMenuItem;

    .line 214
    goto :goto_4

    .line 217
    :cond_b
    const-string v0, "MenuItemCompat"

    .line 218
    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_c
    :goto_4
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 226
    instance-of v1, p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 228
    if-eqz v1, :cond_d

    .line 230
    move-object v2, p1

    .line 232
    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    .line 233
    invoke-interface {v2, v0}, Landroidx/core/internal/view/SupportMenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 235
    goto :goto_5

    .line 238
    :cond_d
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 239
    :goto_5
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 242
    if-eqz v1, :cond_e

    .line 244
    move-object v2, p1

    .line 246
    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    .line 247
    invoke-interface {v2, v0}, Landroidx/core/internal/view/SupportMenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroidx/core/internal/view/SupportMenuItem;

    .line 249
    goto :goto_6

    .line 252
    :cond_e
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 253
    :goto_6
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 256
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 258
    if-eqz v1, :cond_f

    .line 260
    move-object v3, p1

    .line 262
    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    .line 263
    invoke-interface {v3, v0, v2}, Landroidx/core/internal/view/SupportMenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 265
    goto :goto_7

    .line 268
    :cond_f
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 269
    :goto_7
    iget-char v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 272
    iget v2, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    .line 274
    if-eqz v1, :cond_10

    .line 276
    move-object v3, p1

    .line 278
    check-cast v3, Landroidx/core/internal/view/SupportMenuItem;

    .line 279
    invoke-interface {v3, v0, v2}, Landroidx/core/internal/view/SupportMenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 281
    goto :goto_8

    .line 284
    :cond_10
    invoke-interface {p1, v0, v2}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 285
    :goto_8
    iget-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 288
    if-eqz v0, :cond_12

    .line 290
    if-eqz v1, :cond_11

    .line 292
    move-object v2, p1

    .line 294
    check-cast v2, Landroidx/core/internal/view/SupportMenuItem;

    .line 295
    invoke-interface {v2, v0}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 297
    goto :goto_9

    .line 300
    :cond_11
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 301
    :cond_12
    :goto_9
    iget-object p0, p0, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 304
    if-eqz p0, :cond_14

    .line 306
    if-eqz v1, :cond_13

    .line 308
    check-cast p1, Landroidx/core/internal/view/SupportMenuItem;

    .line 310
    invoke-interface {p1, p0}, Landroidx/core/internal/view/SupportMenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 312
    goto :goto_a

    .line 315
    :cond_13
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 316
    :cond_14
    :goto_a
    return-void
    .line 319
.end method
