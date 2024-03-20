.class public Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.super Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;,
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;
    }
.end annotation


# instance fields
.field private mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;

.field mFilteredWifiEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchWifis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLimitedItem:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$Cd6XOuxzYuW0pCB3db76zYY9TEk(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i9XHvdDC4Zs4Qnfh2L5Si_5-e3g(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$3(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jmQxHW3k3-xwXaMIkmmoRV-RcZc(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$updateWifiEntries$4(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q4hJSycm2Q8U1MPs9FkIUSmHdUg(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lmiuix/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$1(Lmiuix/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vh5pqaJfy55r5XkQCZjQZS_oIHE(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$2(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mMatchWifis:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    return-void
.end method

.method private getDialogAdapter()Landroid/widget/BaseAdapter;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;

    return-object p0
.end method

.method private hideProgressIcon()V
    .locals 1

    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    return-void

    .line 237
    :cond_0
    sget v0, Lcom/android/settings/R$id;->network_request_title_progress:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 239
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private isMatchedWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 3

    .line 291
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mMatchWifis:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;

    .line 292
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;->mSsid:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;->mSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 296
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Lmiuix/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 173
    iput-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateWifiEntries()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateUi()V

    const/16 p0, 0x8

    .line 176
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$3(Lmiuix/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, -0x3

    .line 170
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/16 p2, 0x8

    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    new-instance p2, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntries$4(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->isMatchedWifiEntry(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;
    .locals 1

    .line 98
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    return-object v0
.end method

.method private showAllButton()V
    .locals 1

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x3

    .line 225
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 207
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-nez p1, :cond_1

    return-void

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    .line 196
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 198
    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 200
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-interface {p0, p2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance p1, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestDialogFragment{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v7, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;

    sget-object p1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Ljava/time/ZoneId;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 117
    invoke-static {v4}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;

    move-result-object v2

    .line 119
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v5, Landroid/os/Handler;

    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWorkerThread:Landroid/os/HandlerThread;

    .line 121
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    const-wide/16 v10, 0x2710

    move-object v12, p0

    .line 119
    invoke-interface/range {v2 .. v12}, Lcom/android/settings/wifi/WifiTrackerLibProvider;->createWifiPickerTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    sget v1, Lcom/android/settings/R$layout;->network_request_dialog_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    sget v1, Lcom/android/settings/R$id;->network_request_title_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    sget v1, Lcom/android/settings/R$id;->network_request_summary_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    sget v1, Lcom/android/settings/R$id;->network_request_title_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    new-instance v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;

    sget v4, Lcom/android/settings/R$layout;->preference_access_point:I

    iget-object v5, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-direct {v1, p0, p1, v4, v5}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;

    .line 151
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v1, p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 152
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;

    .line 153
    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    .line 154
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->network_connection_request_dialog_showall:I

    .line 156
    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 166
    invoke-virtual {p0, v3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 168
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 216
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mMatchWifis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 368
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 369
    new-instance v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi-IA;)V

    .line 370
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;->mSsid:Ljava/lang/String;

    .line 371
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$MatchWifi;->mSecurityTypes:Ljava/util/List;

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mMatchWifis:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateWifiEntries()V

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateUi()V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mMatchWifis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateWifiEntries()V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateUi()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mMatchWifis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateWifiEntries()V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateUi()V

    return-void
.end method

.method updateUi()V
    .locals 2

    .line 382
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->showAllButton()V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->hideProgressIcon()V

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 390
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method updateWifiEntries()V
    .locals 4

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 284
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilteredWifiEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    .line 285
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 286
    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x5

    goto :goto_0

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v0, v2, v3}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p0

    .line 287
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 284
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
