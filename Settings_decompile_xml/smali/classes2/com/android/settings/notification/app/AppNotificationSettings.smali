.class public Lcom/android/settings/notification/app/AppNotificationSettings;
.super Lcom/android/settings/notification/BaseNotificationSettings;
.source "AppNotificationSettings.java"


# instance fields
.field private mAggregate:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mAggregateObserver:Landroid/database/ContentObserver;

.field private mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mFocus:Landroidx/preference/CheckBoxPreference;

.field private mFocusObserver:Landroid/database/ContentObserver;

.field private mFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mFoldObserver:Landroid/database/ContentObserver;

.field private mOrder:I

.field private mXmsfFakeGroup:Landroid/app/NotificationChannelGroup;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChannelGroupComparator(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/util/Comparator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelGroupList(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocus(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocus:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusObserver(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/database/ContentObserver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmXmsfFakeGroup(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannelGroup;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mXmsfFakeGroup:Landroid/app/NotificationChannelGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChannelGroupList(Lcom/android/settings/notification/app/AppNotificationSettings;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmXmsfFakeGroup(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mXmsfFakeGroup:Landroid/app/NotificationChannelGroup;

    return-void
.end method

.method static bridge synthetic -$$Nest$mpopulateChannelList(Lcom/android/settings/notification/app/AppNotificationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->populateChannelList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDefaultPrefs(Lcom/android/settings/notification/app/AppNotificationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->removeDefaultPrefs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetupDefaultPrefs(Lcom/android/settings/notification/app/AppNotificationSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupDefaultPrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/notification/BaseNotificationSettings;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFoldObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mAggregateObserver:Landroid/database/ContentObserver;

    .line 58
    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    const/16 v0, 0x64

    .line 60
    iput v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mOrder:I

    .line 542
    new-instance v0, Lcom/android/settings/notification/app/AppNotificationSettings$18;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$18;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    .line 554
    new-instance v0, Lcom/android/settings/notification/app/AppNotificationSettings$19;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$19;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/settings/notification/app/AppNotificationSettings;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BaseNotificationSettings;->isChannelBlocked(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/app/AppNotificationSettings;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/notification/app/AppNotificationSettings;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackupImportance:I

    return p0
.end method

.method static synthetic access$2600(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUserId:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/settings/notification/app/AppNotificationSettings;Z)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BaseNotificationSettings;->refreshNotificationShade(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/notification/app/AppNotificationSettings;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/notification/BaseNotificationSettings;->startAppNotificationRuleActivity(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/notification/app/AppNotificationSettings;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/notification/BaseNotificationSettings;->startAppNotificationRuleActivity(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/notification/app/AppNotificationSettings;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    return p0
.end method

.method static synthetic access$4400(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/settings/notification/app/AppNotificationSettings;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/settings/notification/app/AppNotificationSettings;Z)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/BaseNotificationSettings;->refreshNotificationShade(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    return p0
.end method

.method static synthetic access$5200(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/android/settings/notification/app/AppNotificationSettings;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    return p0
.end method

.method static synthetic access$6400(Lcom/android/settings/notification/app/AppNotificationSettings;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/app/AppNotificationSettings;)Lcom/android/settings/notification/MiuiNotificationBackend;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/app/AppNotificationSettings;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mShowLegacyConfig:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    return-object p1
.end method

.method private addChannelGroupBlockSwitch(Landroidx/preference/PreferenceCategory;Landroid/app/NotificationChannelGroup;)V
    .locals 2

    .line 438
    new-instance v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 439
    sget v1, Lcom/android/settings/R$string;->block_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 440
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$15;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/notification/app/AppNotificationSettings$15;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 450
    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 451
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private populateChannelGroup(Landroid/app/NotificationChannelGroup;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->populateChannelGroup(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V

    return-void
.end method

.method private populateChannelGroup(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V
    .locals 6

    .line 407
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 408
    iget v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mOrder:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mOrder:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 409
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 411
    sget v1, Lcom/android/settings/R$string;->notifi_channels_other:I

    goto :goto_0

    .line 412
    :cond_0
    sget v1, Lcom/android/settings/R$string;->notifi_channels:I

    .line 410
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "categories"

    .line 413
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 418
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 419
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 420
    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "xmsf_fake_channel_group"

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 422
    invoke-direct {p0, v0, p1}, Lcom/android/settings/notification/app/AppNotificationSettings;->addChannelGroupBlockSwitch(Landroidx/preference/PreferenceCategory;Landroid/app/NotificationChannelGroup;)V

    .line 424
    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    .line 425
    iget-object v3, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 426
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    .line 428
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    .line 429
    invoke-direct {p0, v0, v5, p2}, Lcom/android/settings/notification/app/AppNotificationSettings;->populateSingleChannelPrefs(Landroidx/preference/PreferenceCategory;Landroid/app/NotificationChannel;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move p0, v2

    .line 431
    :goto_3
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    if-ge p0, p2, :cond_4

    .line 432
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 433
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private populateChannelList()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/utils/XmsfUtils;->filterChannels(Ljava/lang/String;Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification channel group posted twice to settings - old size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    .line 373
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifiSettings"

    .line 372
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 375
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 380
    sget v1, Lcom/android/settings/R$string;->notifi_channels:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "categories"

    .line 381
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 383
    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 386
    sget v2, Lcom/android/settings/R$string;->notifi_no_channels:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    .line 387
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 388
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 391
    invoke-direct {p0, v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->populateChannelGroup(Landroid/app/NotificationChannelGroup;)V

    goto :goto_1

    .line 395
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mXmsfFakeGroup:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_3

    const-string v1, "com.xiaomi.xmsf"

    .line 396
    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/app/AppNotificationSettings;->populateChannelGroup(Landroid/app/NotificationChannelGroup;Ljava/lang/String;)V

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->updateDependents(Z)V

    return-void
.end method

.method private populateSingleChannelPrefs(Landroidx/preference/PreferenceCategory;Landroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 2

    .line 456
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$16;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/settings/notification/app/AppNotificationSettings$16;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/app/NotificationChannel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 481
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private removeDefaultPrefs()V
    .locals 2

    const-string/jumbo v0, "priority"

    .line 159
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    const-string v0, "importance"

    .line 160
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    const-string/jumbo v0, "visibility_override"

    .line 161
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private setupAggregate()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isUserAggregate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationSettingsHelper;->isFoldable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "aggregate"

    .line 206
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mAggregate:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->setAggregatePrefValue(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mAggregate:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$4;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "aggregate_category"

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private setupAllowFloat()V
    .locals 2

    const-string v0, "allow_float"

    .line 283
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowFloat:Landroidx/preference/CheckBoxPreference;

    .line 284
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$9;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAllowKeyguard()V
    .locals 2

    const-string v0, "allow_keyguard"

    .line 295
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowKeyguard:Landroidx/preference/CheckBoxPreference;

    .line 296
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$10;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAllowLights()V
    .locals 2

    .line 335
    sget-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_SUPPORT_LED:Z

    const-string v1, "allow_lights"

    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    return-void

    .line 339
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowLights:Landroidx/preference/CheckBoxPreference;

    .line 340
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$13;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAllowOngoing()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->systemApp:Z

    const-string v1, "allow_ongoing"

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowOngoing:Landroidx/preference/CheckBoxPreference;

    .line 356
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$14;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAllowSound()V
    .locals 2

    const-string v0, "allow_sound"

    .line 307
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowSound:Landroidx/preference/CheckBoxPreference;

    .line 308
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$11;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAllowVibrate()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mHasVibrator:Z

    const-string v1, "allow_vibrate"

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    return-void

    .line 323
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowVibrate:Landroidx/preference/CheckBoxPreference;

    .line 324
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$12;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupAppLinkPref()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v0, "app_link"

    .line 486
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$17;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "app_category"

    .line 494
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private setupBadge()V
    .locals 2

    const-string v0, "badge"

    .line 253
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBadge:Landroidx/preference/CheckBoxPreference;

    .line 254
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$7;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupBlock()V
    .locals 4

    const-string v0, "block"

    .line 165
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBlock:Landroidx/preference/CheckBoxPreference;

    .line 166
    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean v1, v1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBlock:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean v3, v1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->systemApp:Z

    if-eqz v3, :cond_0

    iget-boolean v1, v1, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->banned:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mHasNotifPermission:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBlock:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private setupDefaultPrefs()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupPriority()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->appVisOverride:I

    .line 155
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->setupVisOverridePref(I)V

    return-void
.end method

.method private setupFocus()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isSupportFocus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/notification/BaseNotificationSettings;->canBlockFocus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "focus"

    .line 222
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocus:Landroidx/preference/CheckBoxPreference;

    .line 223
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$5;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/android/settings/notification/app/AppNotificationSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/app/AppNotificationSettings$6;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/notification/NotificationSettingsHelper;->URI_CAN_SHOW_FOCUS:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    const-string v0, "focus_category"

    .line 248
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private setupFold()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->isUserFold(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationSettingsHelper;->isFoldable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fold"

    .line 190
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->setFoldRuleValue(Lcom/android/settingslib/miuisettings/preference/ValuePreference;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$3;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "fold_category"

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method private setupPriority()V
    .locals 2

    const-string/jumbo v0, "priority"

    .line 267
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPriority:Landroidx/preference/CheckBoxPreference;

    .line 268
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_SUPPORT_HIGH_PRIORITY:Z

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lcom/android/settings/notification/app/AppNotificationSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$8;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/BaseNotificationSettings;->setPrefVisible(Landroidx/preference/Preference;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x48

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/notification/BaseNotificationSettings;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->miui_app_notification_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "NotifiSettings"

    const-string v0, "Missing package or uid or packageinfo"

    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFoldObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFoldObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mAggregateObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mAggregateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->collectConfigActivities()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupBlock()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupFold()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAggregate()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupFocus()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupBadge()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowFloat()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowKeyguard()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowSound()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowVibrate()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowLights()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAppLinkPref()V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppNotificationSettings;->setupAllowOngoing()V

    .line 101
    new-instance v0, Lcom/android/settings/notification/app/AppNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/app/AppNotificationSettings;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 133
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected updateDependents(Z)V
    .locals 3

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/ApplicationHelper;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/enterprise/IApplicationHelper;->isNotificationUiDisable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 503
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/AppNotificationSettings;->updateDependents(ZZ)V

    return-void
.end method

.method protected updateDependents(ZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 508
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mChannelGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 509
    invoke-virtual {v3, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFold:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 513
    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mAggregate:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 514
    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocus:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 515
    iget-object v2, p0, Lcom/android/settings/notification/app/AppNotificationSettings;->mFocus:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canShowFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 516
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBadge:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 517
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBadge:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAppRow:Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;

    iget-boolean v3, v3, Lcom/android/settings/notification/MiuiNotificationBackend$AppRow;->showBadge:Z

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 518
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPriority:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 519
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPriority:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mBackend:Lcom/android/settings/notification/MiuiNotificationBackend;

    iget-object v4, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/notification/MiuiNotificationBackend;->getPriority(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 520
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowFloat:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_6

    .line 521
    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 522
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowFloat:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canFloat()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 524
    :cond_6
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowKeyguard:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_a

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v2

    if-nez p1, :cond_7

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canShowKeyguard()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v0

    goto :goto_6

    :cond_7
    move v3, v1

    .line 527
    :goto_6
    iget-object v4, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowKeyguard:Landroidx/preference/CheckBoxPreference;

    if-eqz p2, :cond_8

    if-eqz v2, :cond_8

    move v5, v0

    goto :goto_7

    :cond_8
    move v5, v1

    :goto_7
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 528
    iget-object v4, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowKeyguard:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 529
    iget-object v4, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowKeyguard:Landroidx/preference/CheckBoxPreference;

    if-nez v3, :cond_9

    if-nez v2, :cond_9

    sget v2, Lcom/android/settings/R$string;->disallow_lock_screen_summary:I

    goto :goto_8

    :cond_9
    sget v2, Lcom/android/settings/R$string;->allow_keyguard_summary:I

    :goto_8
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 531
    :cond_a
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowSound:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 532
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowSound:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canSound()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v0

    goto :goto_9

    :cond_b
    move v3, v1

    :goto_9
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 533
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowVibrate:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 534
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowVibrate:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canVibrate()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v0

    goto :goto_a

    :cond_c
    move v3, v1

    :goto_a
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 535
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowLights:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 536
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowLights:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canLights()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_b

    :cond_d
    move v3, v1

    :goto_b
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 537
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mVisibilityOverride:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->isLockScreenSecure()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v0

    goto :goto_c

    :cond_e
    move v3, v1

    :goto_c
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    .line 538
    iget-object v2, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowOngoing:Landroidx/preference/CheckBoxPreference;

    if-nez p1, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/notification/BaseNotificationSettings;->canShowOngoing()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_d

    :cond_f
    move v0, v1

    :goto_d
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/notification/BaseNotificationSettings;->setChecked(Landroidx/preference/Preference;Z)V

    .line 539
    iget-object p1, p0, Lcom/android/settings/notification/BaseNotificationSettings;->mAllowOngoing:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/BaseNotificationSettings;->setEnabled(Landroidx/preference/Preference;Z)V

    return-void
.end method
