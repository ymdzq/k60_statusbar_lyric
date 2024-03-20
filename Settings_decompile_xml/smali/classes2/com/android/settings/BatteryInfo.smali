.class public Lcom/android/settings/BatteryInfo;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "BatteryInfo.java"


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mHealth:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLevel:Landroid/widget/TextView;

.field private mPower:Landroid/widget/TextView;

.field private mScale:Landroid/widget/TextView;

.field private mScreenStats:Landroid/os/IPowerManager;

.field private mStatus:Landroid/widget/TextView;

.field private mTechnology:Landroid/widget/TextView;

.field private mTemperature:Landroid/widget/TextView;

.field private mUptime:Landroid/widget/TextView;

.field private mVoltage:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHealth(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mHealth:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLevel(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mLevel:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPower(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScale(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mScale:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTechnology(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemperature(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoltage(Lcom/android/settings/BatteryInfo;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtenthsToFixedString(Lcom/android/settings/BatteryInfo;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateBatteryStats(Lcom/android/settings/BatteryInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/BatteryInfo;->updateBatteryStats()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/BatteryInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/BatteryInfo$1;-><init>(Lcom/android/settings/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v0, Lcom/android/settings/BatteryInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/BatteryInfo$2;-><init>(Lcom/android/settings/BatteryInfo;)V

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final tenthsToFixedString(I)Ljava/lang/String;
    .locals 2

    .line 71
    div-int/lit8 p0, p1, 0xa

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateBatteryStats()V
    .locals 4

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 188
    iget-object p0, p0, Lcom/android/settings/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    sget p1, Lcom/android/settings/R$layout;->battery_info:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 149
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    sget p1, Lcom/android/settings/R$string;->battery_info_label:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 156
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 158
    sget v0, Lcom/android/settings/R$id;->status:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mStatus:Landroid/widget/TextView;

    .line 159
    sget v0, Lcom/android/settings/R$id;->power:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mPower:Landroid/widget/TextView;

    .line 160
    sget v0, Lcom/android/settings/R$id;->level:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mLevel:Landroid/widget/TextView;

    .line 161
    sget v0, Lcom/android/settings/R$id;->scale:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mScale:Landroid/widget/TextView;

    .line 162
    sget v0, Lcom/android/settings/R$id;->health:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mHealth:Landroid/widget/TextView;

    .line 163
    sget v0, Lcom/android/settings/R$id;->technology:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mTechnology:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/android/settings/R$id;->voltage:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mVoltage:Landroid/widget/TextView;

    .line 165
    sget v0, Lcom/android/settings/R$id;->temperature:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mTemperature:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/android/settings/R$id;->uptime:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mUptime:Landroid/widget/TextView;

    const-string v0, "batterystats"

    .line 169
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string/jumbo v0, "power"

    .line 171
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BatteryInfo;->mScreenStats:Landroid/os/IPowerManager;

    .line 172
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    iget-object v0, p0, Lcom/android/settings/BatteryInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/BatteryInfo;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method
