.class public Lcom/android/settings/display/ScreenResolutionDialogActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ScreenResolutionDialogActivity.java"


# instance fields
.field private mCurrentResolutionIndex:I

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
.method static bridge synthetic -$$Nest$fgetmScreenResolutionsSupported(Lcom/android/settings/display/ScreenResolutionDialogActivity;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mScreenResolutionsSupported:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mswitchResolution(Lcom/android/settings/display/ScreenResolutionDialogActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->switchResolution(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private createResolutionDialog()V
    .locals 4

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->getCurrentResolution()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mCurrentResolutionIndex:I

    .line 106
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    sget v1, Lcom/android/settingslib/R$string;->screen_resolution_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 108
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mCurrentResolutionIndex:I

    new-instance v3, Lcom/android/settings/display/ScreenResolutionDialogActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/display/ScreenResolutionDialogActivity$1;-><init>(Lcom/android/settings/display/ScreenResolutionDialogActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 118
    new-instance v1, Lcom/android/settings/display/ScreenResolutionDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenResolutionDialogActivity$2;-><init>(Lcom/android/settings/display/ScreenResolutionDialogActivity;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 125
    new-instance v1, Lcom/android/settings/display/ScreenResolutionDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenResolutionDialogActivity$3;-><init>(Lcom/android/settings/display/ScreenResolutionDialogActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private switchResolution(I)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 163
    iget v1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mInitalDensity:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mInitalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->switchResolution(IIII)V

    return-void
.end method

.method private switchResolution(IIII)V
    .locals 3

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.view.IWindowManager"

    .line 171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p0}, Landroid/view/IWindowManager;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/16 p1, 0xff

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw p0

    .line 180
    :catch_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntriesValue:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 150
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntriesValue:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCurrentResolution()I
    .locals 3

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionTexts:Landroid/util/SparseArray;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 142
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 42
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mDisplay:Landroid/view/Display;

    const-string/jumbo p1, "window"

    .line 45
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mWindowManager:Landroid/view/IWindowManager;

    .line 46
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mInitalPoint:Landroid/graphics/Point;

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mInitalDensity:I

    .line 49
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mInitalPoint:Landroid/graphics/Point;

    invoke-interface {p1, v0, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    const-string/jumbo p1, "screen_resolution_supported"

    .line 51
    invoke-static {p1}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mScreenResolutionsSupported:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "ResolutionList"

    const-string v2, "ResolutionListPreference: "

    .line 53
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mScreenResolutionsSupported:[I

    if-eqz p1, :cond_4

    array-length p1, p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_4

    .line 57
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionTexts:Landroid/util/SparseArray;

    .line 58
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionFullTexts:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 61
    sget v2, Lcom/android/settingslib/R$array;->screen_resolution:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 62
    sget v3, Lcom/android/settingslib/R$array;->screen_resolution_text:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 64
    sget v4, Lcom/android/settingslib/R$array;->screen_resolution_format:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    move v4, v0

    .line 66
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionTexts:Landroid/util/SparseArray;

    aget v6, v2, v4

    aget-object v7, v3, v4

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    iget-object v5, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionFullTexts:Landroid/util/SparseArray;

    aget v6, v2, v4

    aget-object v7, p1, v4

    aget-object v8, v3, v4

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 69
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 68
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 72
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :goto_2
    iget-object v3, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mScreenResolutionsSupported:[I

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 77
    iget-object v4, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionFullTexts:Landroid/util/SparseArray;

    aget v3, v3, v0

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mResolutionTexts:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mScreenResolutionsSupported:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntriesValue:[Ljava/lang/CharSequence;

    .line 90
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntries:[Ljava/lang/CharSequence;

    .line 91
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntriesValue:[Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionDialogActivity;->mEntriesValue:[Ljava/lang/CharSequence;

    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/display/ScreenResolutionDialogActivity;->createResolutionDialog()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
