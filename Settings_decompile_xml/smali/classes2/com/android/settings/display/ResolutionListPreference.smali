.class public Lcom/android/settings/display/ResolutionListPreference;
.super Lcom/android/settings/CustomListPreference;
.source "ResolutionListPreference.java"


# instance fields
.field private mClickedEntryIndex:I

.field private mDisplay:Landroid/view/Display;

.field mEntries:[Ljava/lang/CharSequence;

.field mEntriesValue:[Ljava/lang/CharSequence;

.field private mInitalDensity:I

.field private mInitalPoint:Landroid/graphics/Point;

.field private mResolutionFullTexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolutionTexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenResolutionsSupported:[I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmClickedEntryIndex(Lcom/android/settings/display/ResolutionListPreference;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mClickedEntryIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mDisplay:Landroid/view/Display;

    const-string/jumbo p1, "window"

    .line 63
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mWindowManager:Landroid/view/IWindowManager;

    .line 64
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mInitalPoint:Landroid/graphics/Point;

    .line 66
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p1, p2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mInitalDensity:I

    .line 67
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/settings/display/ResolutionListPreference;->mInitalPoint:Landroid/graphics/Point;

    invoke-interface {p1, p2, v0}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 69
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x110300ae

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mScreenResolutionsSupported:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ResolutionList"

    const-string v1, "ResolutionListPreference: "

    .line 72
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mScreenResolutionsSupported:[I

    if-eqz p1, :cond_4

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    .line 76
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionTexts:Landroid/util/SparseArray;

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionFullTexts:Landroid/util/SparseArray;

    .line 79
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 80
    sget v1, Lcom/android/settings/R$array;->screen_resolution:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 82
    sget v2, Lcom/android/settings/R$array;->screen_resolution_text:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 84
    sget v3, Lcom/android/settings/R$array;->screen_resolution_format:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    move v3, p2

    .line 86
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionTexts:Landroid/util/SparseArray;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v4, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionFullTexts:Landroid/util/SparseArray;

    aget v5, v1, v3

    aget-object v6, p1, v3

    aget-object v7, v2, v3

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 89
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :goto_2
    iget-object v2, p0, Lcom/android/settings/display/ResolutionListPreference;->mScreenResolutionsSupported:[I

    array-length v3, v2

    if-ge p2, v3, :cond_3

    .line 97
    iget-object v3, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionFullTexts:Landroid/util/SparseArray;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionTexts:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/settings/display/ResolutionListPreference;->mScreenResolutionsSupported:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v0, :cond_4

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntriesValue:[Ljava/lang/CharSequence;

    .line 110
    iget-object p2, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 111
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntriesValue:[Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntriesValue:[Ljava/lang/CharSequence;

    :cond_4
    return-void
.end method

.method private switchResolution(IIII)V
    .locals 3

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 182
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/display/ResolutionListPreference;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/16 p1, 0xff

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw p0

    .line 191
    :catch_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method


# virtual methods
.method public isSuported()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntriesValue:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/android/settings/display/ResolutionListPreference;->mScreenResolutionsSupported:[I

    iget v1, p0, Lcom/android/settings/display/ResolutionListPreference;->mClickedEntryIndex:I

    aget v0, v0, v1

    .line 166
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float p1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    .line 167
    iget v1, p0, Lcom/android/settings/display/ResolutionListPreference;->mInitalDensity:I

    mul-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/display/ResolutionListPreference;->mInitalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    .line 168
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/settings/display/ResolutionListPreference;->switchResolution(IIII)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/display/ResolutionListPreference;->isSuported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/display/ResolutionListPreference;->mResolutionTexts:Landroid/util/SparseArray;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/display/ResolutionListPreference;->mEntriesValue:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    .line 141
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/ResolutionListPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/display/ResolutionListPreference$1;-><init>(Lcom/android/settings/display/ResolutionListPreference;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 157
    sget p0, Lcom/android/settings/R$string;->screen_resolution_dialog_title:I

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method
