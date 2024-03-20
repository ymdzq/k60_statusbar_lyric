.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 147
    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 213
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 265
    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 330
    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver-IA;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 807
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 808
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 809
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 810
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 811
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 812
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 813
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    .line 814
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 815
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RunningState:Background"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 816
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 817
    new-instance v2, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 818
    invoke-virtual {v1, p1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2

    .line 798
    sget-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v1, :cond_0

    .line 800
    new-instance v1, Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 802
    :cond_0
    sget-object p0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 803
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 2

    .line 874
    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    .line 877
    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-lt p0, v0, :cond_1

    const/16 v0, 0x15e

    if-ge p0, v0, :cond_1

    iget p0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p2, :cond_1

    .line 781
    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 783
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/16 p0, 0x2e

    .line 790
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ltz p0, :cond_2

    add-int/lit8 p0, p0, 0x1

    .line 792
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private reset()V
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 889
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 890
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 892
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 893
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 926
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 928
    iget v3, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/16 v3, 0xc8

    move-object/from16 v5, p2

    .line 935
    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 936
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 938
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 942
    iget-boolean v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v11, :cond_1

    iget v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v11, :cond_1

    .line 943
    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 950
    :cond_1
    iget v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_2

    .line 952
    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_2
    add-int/2addr v9, v4

    goto :goto_1

    .line 962
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 963
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 964
    :goto_3
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_5

    .line 966
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 967
    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v13, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v14, v11}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_5
    const-wide/16 v11, 0x0

    if-ge v10, v8, :cond_7

    .line 973
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 974
    iget-wide v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v11, v14, v11

    if-nez v11, :cond_6

    iget v11, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v11, :cond_6

    .line 975
    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v11, :cond_6

    .line 977
    iput-boolean v4, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 978
    iget-boolean v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v12, :cond_6

    .line 979
    iput-boolean v4, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v10, v8, :cond_14

    .line 987
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningServiceInfo;

    move/from16 v16, v8

    .line 994
    iget-wide v7, v14, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_b

    iget v7, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v7, :cond_b

    .line 995
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v7, :cond_b

    .line 996
    iget-boolean v8, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v8, :cond_b

    .line 1002
    iget-object v7, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x12c

    if-ge v8, v15, :cond_b

    .line 1007
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    :goto_7
    if-eqz v7, :cond_a

    .line 1009
    iget-boolean v8, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v8, :cond_9

    iget-object v8, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0, v8}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_8

    .line 1013
    :cond_8
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v7, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    :cond_9
    :goto_8
    move v15, v4

    goto :goto_9

    :cond_a
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_b

    goto :goto_b

    .line 1022
    :cond_b
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v8, v14, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    if-nez v7, :cond_c

    .line 1024
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1025
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v15, v14, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v8, v15, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1027
    :cond_c
    iget-object v8, v14, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v8, :cond_d

    .line 1030
    new-instance v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v13, v14, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v14, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v8, v1, v13, v15}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1031
    iget-object v13, v14, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v7, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v13, v4

    .line 1034
    :cond_d
    iget v7, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v15, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v7, v15, :cond_13

    .line 1035
    iget-wide v3, v14, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v3, v3, v11

    if-nez v3, :cond_e

    iget v15, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_a

    :cond_e
    const/4 v15, 0x0

    .line 1036
    :goto_a
    iget v3, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v15, v3, :cond_12

    if-eq v3, v15, :cond_11

    if-eqz v3, :cond_f

    .line 1040
    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_f
    if-eqz v15, :cond_10

    .line 1043
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v3, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1045
    :cond_10
    iput v15, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_11
    const/4 v13, 0x1

    .line 1048
    :cond_12
    iget-object v3, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 1049
    iget v3, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v3, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    .line 1051
    :cond_13
    invoke-virtual {v8, v1, v14}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v3

    or-int/2addr v13, v3

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v16

    const/16 v3, 0xc8

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_14
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v9, :cond_19

    .line 1057
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1058
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v6, :cond_16

    .line 1063
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v6, :cond_15

    .line 1066
    new-instance v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v6, v1, v8, v10}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1067
    iget v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1068
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v10, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v13, 0x1

    .line 1070
    :cond_15
    iget-object v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 1073
    :cond_16
    invoke-direct {v0, v4}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1074
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 1076
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    .line 1078
    :cond_17
    iget v8, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v8, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    const/4 v7, 0x1

    .line 1079
    iput-boolean v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1080
    invoke-virtual {v6, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_d

    :cond_18
    const/4 v8, 0x0

    .line 1082
    iput-boolean v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1085
    :goto_d
    iget v8, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1086
    iput-object v4, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1091
    :cond_19
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1e

    .line 1093
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1094
    iget v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v8, v9, :cond_1d

    .line 1095
    iget-object v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v8, :cond_1b

    .line 1097
    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v5, :cond_1a

    .line 1099
    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_1a
    if-eqz v5, :cond_1c

    .line 1102
    iget-object v5, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v5, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f

    .line 1108
    :cond_1b
    iput-object v5, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_1c
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1113
    :cond_1d
    iget-object v5, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    const/4 v13, 0x1

    goto :goto_e

    .line 1119
    :cond_1e
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v3, :cond_21

    .line 1121
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1122
    iget-boolean v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v6, 0x1

    goto :goto_12

    .line 1124
    :cond_20
    :goto_11
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v6, 0x1

    const/4 v13, 0x1

    :goto_12
    add-int/2addr v4, v6

    goto :goto_10

    .line 1133
    :cond_21
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_23

    .line 1135
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1136
    iget v8, v6, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v8, v9, :cond_22

    .line 1137
    invoke-virtual {v6, v1, v2, v9}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v6

    or-int/2addr v6, v13

    move v13, v6

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_23
    move-object v4, v5

    const/4 v3, 0x0

    .line 1143
    :goto_14
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_2c

    .line 1144
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 1145
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1146
    :cond_24
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 1147
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1148
    iget v10, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v10, v14, :cond_27

    .line 1149
    invoke-virtual {v9, v2}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1150
    iget v10, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v10, :cond_25

    .line 1152
    iget-object v10, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 1168
    :cond_25
    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1169
    :cond_26
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1170
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1171
    iget v10, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v10, v14, :cond_26

    .line 1173
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    const/4 v13, 0x1

    goto :goto_16

    .line 1156
    :cond_27
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 1157
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v10

    if-nez v10, :cond_29

    if-nez v4, :cond_28

    .line 1159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    :cond_28
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_29
    iget v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v9, :cond_2a

    .line 1164
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->remove(I)V

    :cond_2a
    const/4 v13, 0x1

    goto :goto_15

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    :cond_2c
    if-eqz v4, :cond_2d

    const/4 v2, 0x0

    .line 1180
    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 1181
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1182
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    const/16 v2, 0x3e7

    if-eqz v13, :cond_43

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1189
    :goto_18
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_33

    .line 1190
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v9, 0x0

    .line 1191
    iput-boolean v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/4 v7, 0x1

    .line 1192
    iput-boolean v7, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v9, 0x7fffffffffffffffL

    .line 1193
    iput-wide v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1194
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1195
    iget-object v14, v10, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v14, :cond_2e

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v14, v7

    if-eqz v14, :cond_2e

    .line 1198
    iput-boolean v7, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1200
    :cond_2e
    iget-object v10, v10, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v10, :cond_2f

    iget v14, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v14, :cond_2f

    const/4 v14, 0x0

    .line 1202
    iput-boolean v14, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    move-object v14, v6

    .line 1203
    iget-wide v5, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v5, v5, v11

    if-lez v5, :cond_30

    .line 1204
    iput-wide v11, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_1b

    :cond_2f
    move-object v14, v6

    :cond_30
    :goto_1b
    move-object v6, v14

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    goto :goto_1a

    :cond_31
    move-object v14, v6

    .line 1208
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    goto :goto_19

    :cond_32
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    goto :goto_18

    .line 1212
    :cond_33
    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1214
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    iget-object v6, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    .line 1217
    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3b

    .line 1218
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v9, 0x0

    .line 1219
    iput-boolean v9, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 1221
    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1223
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v10}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1225
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    iget v10, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v10, :cond_34

    .line 1227
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    :cond_34
    iget-object v10, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_36

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1235
    iput-boolean v11, v14, Lcom/android/settings/applications/RunningState$BaseItem;->mNeedDivider:Z

    .line 1237
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v11, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v11, :cond_35

    move-object v12, v11

    :cond_35
    const/4 v11, 0x1

    goto :goto_1d

    .line 1251
    :cond_36
    new-instance v10, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v11, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v10, v11}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1252
    iget-object v11, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1253
    iget-object v14, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1254
    iput-object v10, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_1e

    .line 1256
    :cond_37
    iput-object v8, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1257
    iget-object v8, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1258
    :goto_1f
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v7, 0x1

    sub-int/2addr v8, v7

    if-ge v9, v8, :cond_38

    .line 1259
    iget-object v8, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    :cond_38
    const/4 v8, 0x0

    .line 1263
    invoke-virtual {v10, v1, v8}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1266
    iget v8, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v9, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v8, v9, :cond_39

    if-ne v8, v2, :cond_3a

    if-nez v9, :cond_3a

    sget-object v8, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v9, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1269
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    const-string v8, "com.xiaomi.xmsf"

    iget-object v9, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1270
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    goto :goto_20

    .line 1275
    :cond_39
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    .line 1281
    :cond_3b
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v3, :cond_40

    .line 1283
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1284
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v9, :cond_3f

    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-gtz v9, :cond_3f

    .line 1285
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v9, :cond_3c

    .line 1286
    new-instance v9, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v10, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v9, v10}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1287
    iput-object v8, v9, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1289
    :cond_3c
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1292
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget v10, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v11, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v10, v11, :cond_3d

    if-ne v10, v2, :cond_3e

    if-nez v11, :cond_3e

    sget-object v10, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v9, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1295
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    const-string v9, "com.xiaomi.xmsf"

    iget-object v10, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v10, v10, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1296
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    goto :goto_22

    .line 1302
    :cond_3d
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1304
    :cond_3e
    :goto_22
    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 1310
    :cond_40
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_23
    if-ge v6, v3, :cond_42

    .line 1312
    iget-object v8, v0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1313
    iget v9, v8, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v10, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v9, v10, :cond_41

    const/4 v9, 0x0

    .line 1314
    invoke-virtual {v8, v1, v9}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    goto :goto_24

    :cond_41
    const/4 v9, 0x0

    :goto_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_42
    const/4 v9, 0x0

    .line 1318
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1319
    :try_start_0
    iput-object v4, v0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1320
    iput-object v5, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1321
    monitor-exit v3

    goto :goto_25

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_43
    const/4 v9, 0x0

    .line 1326
    :goto_25
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1327
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1331
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v9

    move v5, v4

    move v6, v5

    move v8, v6

    :goto_26
    const/16 v10, 0x190

    if-ge v4, v3, :cond_47

    .line 1333
    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1334
    iget v12, v11, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v14, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v12, v14, :cond_46

    .line 1337
    iget-object v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v12, v10, :cond_44

    add-int/lit8 v6, v6, 0x1

    .line 1340
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_44
    const/16 v10, 0xc8

    if-gt v12, v10, :cond_45

    add-int/lit8 v8, v8, 0x1

    .line 1344
    iget-object v10, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_45
    const-string v10, "RunningState"

    .line 1346
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown non-service process: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " #"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_46
    add-int/lit8 v5, v5, 0x1

    :goto_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1361
    :cond_47
    :try_start_1
    iget-object v3, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1362
    new-array v4, v3, [I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move v11, v9

    :goto_28
    if-ge v11, v3, :cond_48

    .line 1364
    :try_start_2
    iget-object v12, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v12, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v12, v4, v11
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    :catch_0
    move v12, v9

    const/4 v7, 0x0

    goto/16 :goto_33

    .line 1366
    :cond_48
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    .line 1367
    invoke-interface {v11, v4}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    move v11, v9

    move v12, v11

    move/from16 v16, v13

    const/4 v7, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move v13, v12

    :goto_29
    if-ge v11, v3, :cond_53

    .line 1370
    :try_start_4
    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ProcessItem;

    move/from16 v22, v3

    .line 1371
    aget-wide v2, v4, v11

    iget v10, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v9, v1, v2, v3, v10}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v2

    or-int v16, v16, v2

    .line 1372
    iget v2, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v3, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v2, v3, :cond_49

    .line 1373
    iget-wide v2, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J

    add-long v20, v20, v2

    move-object/from16 v23, v4

    goto/16 :goto_31

    .line 1374
    :cond_49
    iget-object v2, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_51

    move-object v10, v4

    .line 1376
    iget-wide v3, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5

    add-long v2, v18, v3

    if-eqz v7, :cond_4b

    .line 1379
    :try_start_5
    new-instance v4, Lcom/android/settings/applications/RunningState$MergedItem;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-wide/from16 v18, v2

    :try_start_6
    iget v2, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v4, v2}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v4, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1380
    iput-object v9, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1381
    iget v2, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v3, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    if-eq v2, v3, :cond_4a

    const/4 v2, 0x1

    goto :goto_2a

    :cond_4a
    const/4 v2, 0x0

    :goto_2a
    or-int/2addr v2, v12

    .line 1382
    :try_start_7
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v23, v10

    goto :goto_2b

    :catch_1
    move v12, v2

    goto/16 :goto_32

    :catch_2
    move-wide/from16 v18, v2

    goto/16 :goto_32

    :cond_4b
    move-wide/from16 v18, v2

    .line 1384
    :try_start_8
    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_4d

    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1385
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v2, v9, :cond_4c

    goto :goto_2c

    .line 1397
    :cond_4c
    iget-object v2, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v23, v10

    move v2, v12

    :goto_2b
    const/4 v3, 0x1

    goto :goto_30

    .line 1386
    :cond_4d
    :goto_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v13, :cond_4f

    .line 1388
    :try_start_9
    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1389
    iget v7, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    move-object/from16 v23, v10

    iget v10, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v10, :cond_4e

    const/4 v7, 0x1

    goto :goto_2e

    :cond_4e
    const/4 v7, 0x0

    :goto_2e
    or-int/2addr v12, v7

    .line 1390
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v10, v23

    goto :goto_2d

    :cond_4f
    move-object/from16 v23, v10

    .line 1392
    new-instance v4, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v3, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v4, v3}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v4, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1393
    iput-object v9, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1394
    iget v3, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v7, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    if-eq v3, v7, :cond_50

    const/4 v3, 0x1

    goto :goto_2f

    :cond_50
    const/4 v3, 0x0

    :goto_2f
    or-int/2addr v3, v12

    .line 1395
    :try_start_a
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    move-object v7, v2

    move v2, v3

    goto :goto_2b

    .line 1400
    :goto_30
    :try_start_b
    invoke-virtual {v4, v1, v3}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1401
    invoke-virtual {v4, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    add-int/lit8 v13, v13, 0x1

    move v12, v2

    goto :goto_31

    :catch_3
    move-object v7, v2

    move v12, v3

    goto :goto_32

    :catch_4
    move-object v7, v2

    goto :goto_32

    :cond_51
    move-object/from16 v23, v4

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_52

    .line 1405
    :try_start_c
    iget-wide v3, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mSize:J
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    add-long/2addr v14, v3

    :cond_52
    :goto_31
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v22

    move-object/from16 v4, v23

    const/16 v2, 0x3e7

    const/4 v9, 0x0

    const/16 v10, 0x190

    goto/16 :goto_29

    :catch_5
    :cond_53
    :goto_32
    move/from16 v13, v16

    goto :goto_34

    :catch_6
    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_33
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    :goto_34
    move-wide/from16 v2, v18

    move-wide/from16 v10, v20

    if-nez v7, :cond_55

    .line 1413
    iget-object v4, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_55

    .line 1414
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v6, :cond_55

    .line 1416
    iget-object v9, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$MergedItem;

    move/from16 v16, v13

    .line 1417
    iget v13, v9, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    move-wide/from16 v17, v10

    iget v10, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v13, v10, :cond_54

    const/4 v10, 0x1

    goto :goto_36

    :cond_54
    const/4 v10, 0x0

    :goto_36
    or-int/2addr v12, v10

    .line 1418
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v13, v16

    move-wide/from16 v10, v17

    goto :goto_35

    :cond_55
    move-wide/from16 v17, v10

    move/from16 v16, v13

    move-object v4, v7

    if-eqz v4, :cond_5b

    if-nez v12, :cond_56

    move-object v9, v4

    goto :goto_3a

    .line 1432
    :cond_56
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_37
    if-ge v10, v7, :cond_59

    .line 1435
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1438
    iget v12, v11, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v13, v0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    move/from16 p2, v7

    const/16 v7, 0x3e7

    if-eq v12, v13, :cond_57

    if-ne v12, v7, :cond_58

    if-eqz v13, :cond_57

    goto :goto_38

    .line 1446
    :cond_57
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_38
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p2

    goto :goto_37

    .line 1451
    :cond_59
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_39
    if-ge v11, v10, :cond_5c

    .line 1453
    iget-object v7, v0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1454
    iget v7, v12, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSeq:I

    iget v13, v0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v7, v13, :cond_5a

    const/4 v7, 0x1

    .line 1455
    invoke-virtual {v12, v1, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1456
    invoke-virtual {v12, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    :cond_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    :cond_5b
    const/4 v9, 0x0

    :cond_5c
    :goto_3a
    const/4 v10, 0x0

    .line 1462
    :goto_3b
    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5d

    .line 1463
    iget-object v11, v0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v11, v1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    .line 1466
    :cond_5d
    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1467
    :try_start_d
    iput v6, v0, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1468
    iput v8, v0, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1469
    iput v5, v0, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1470
    iput-wide v2, v0, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1471
    iput-wide v14, v0, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v2, v17

    .line 1472
    iput-wide v2, v0, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    if-eqz v4, :cond_5e

    .line 1474
    iput-object v4, v0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1475
    iput-object v9, v0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1476
    iget-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v2, :cond_5e

    const/16 v16, 0x1

    .line 1480
    :cond_5e
    iget-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v2, :cond_5f

    const/4 v2, 0x1

    .line 1481
    iput-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1482
    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1484
    :cond_5f
    monitor-exit v1

    return v16

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1503
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1504
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .line 1496
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1497
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1498
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method hasData()Z
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-boolean p0, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 851
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method pause()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 867
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v1, 0x0

    .line 868
    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 869
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 4

    .line 822
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 823
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 824
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 825
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result p1

    .line 826
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 827
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 829
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 830
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 834
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 835
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 837
    :cond_2
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 838
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1491
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1492
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateNow()V
    .locals 3

    .line 842
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 844
    iget-object p0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 845
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method waitForData()V
    .locals 4

    .line 855
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 858
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 862
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
