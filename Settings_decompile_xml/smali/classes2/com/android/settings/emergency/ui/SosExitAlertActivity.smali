.class public Lcom/android/settings/emergency/ui/SosExitAlertActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SosExitAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/ui/SosExitAlertActivity$MyTransitionListener;
    }
.end annotation


# instance fields
.field private listNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listPhoneNunbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnHideSos:Landroid/view/View;

.field private mFingerVerifyDialog:Lcom/android/settings/emergency/ui/view/FullScreenDialog;

.field private mGpContactSecond:Landroid/widget/RelativeLayout;

.field private mGpContactThird:Landroid/widget/RelativeLayout;

.field private mGroupCn110Call:Landroid/widget/LinearLayout;

.field private mGroupCn119Call:Landroid/widget/LinearLayout;

.field private mGroupCn120Call:Landroid/widget/LinearLayout;

.field private mGroupCnSosCommonCall:Landroid/widget/LinearLayout;

.field private mGroupCnSosEl:Landroid/widget/RelativeLayout;

.field private mIvSosContactCallFirst:Landroid/widget/ImageView;

.field private mIvSosContactCallSecond:Landroid/widget/ImageView;

.field private mIvSosContactCallThird:Landroid/widget/ImageView;

.field private mSosDialogLayout:Landroid/widget/RelativeLayout;

.field private mTvSosContactNameFirst:Landroid/widget/TextView;

.field private mTvSosContactNameSecond:Landroid/widget/TextView;

.field private mTvSosContactNameThird:Landroid/widget/TextView;

.field private mTvSosContactPhoneFirst:Landroid/widget/TextView;

.field private mTvSosContactPhoneSecond:Landroid/widget/TextView;

.field private mTvSosContactPhoneThird:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$-cK8oJMuM-ez8AR270IFleUa2NE(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->lambda$initViews$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlistPhoneNunbers(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFingerVerifyDialog(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)Lcom/android/settings/emergency/ui/view/FullScreenDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mFingerVerifyDialog:Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcall(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->call(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private call(Ljava/lang/String;)V
    .locals 4

    .line 283
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    .line 284
    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 p1, 0x1

    .line 285
    invoke-static {v0, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    const-string v1, "com.android.phone.extra.slot"

    .line 286
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.android.server.telecom"

    .line 287
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 288
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SOS-ExitAlertActivity"

    .line 291
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static encryptPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, " "

    const-string v1, ""

    .line 296
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    return-object p0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x2

    const-string v2, " **** "

    invoke-virtual {v0, v1, p0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initDatas()V
    .locals 4

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 199
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContactNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private initListeners()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mBtnHideSos:Landroid/view/View;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$1;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mSosDialogLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$2;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactNameFirst:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactPhoneFirst:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->encryptPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mIvSosContactCallFirst:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$3;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactNameSecond:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactPhoneSecond:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->encryptPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mIvSosContactCallSecond:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings/emergency/ui/SosExitAlertActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$4;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGpContactSecond:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactNameThird:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listNames:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactPhoneThird:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->listPhoneNunbers:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->encryptPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mIvSosContactCallThird:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$5;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$5;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGpContactThird:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCn110Call:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$6;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$6;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCn120Call:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$7;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$7;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCn119Call:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$8;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$8;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCnSosEl:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$9;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViews()V
    .locals 7

    .line 211
    new-instance v0, Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    sget v1, Lcom/android/settings/R$style;->Fod_Dialog_Fullscreen:I

    invoke-direct {v0, p0, v1}, Lcom/android/settings/emergency/ui/view/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mFingerVerifyDialog:Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sos_dialog_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mFingerVerifyDialog:Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mFingerVerifyDialog:Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mFingerVerifyDialog:Lcom/android/settings/emergency/ui/view/FullScreenDialog;

    new-instance v1, Lcom/android/settings/emergency/ui/SosExitAlertActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "from"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    .line 217
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 218
    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    .line 219
    invoke-virtual {v0, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 220
    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v5, "to"

    invoke-direct {v3, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 221
    invoke-virtual {v3, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 223
    invoke-virtual {v1, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 224
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, -0x2

    invoke-virtual {v2, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lmiuix/animation/base/AnimConfig;->setMinDuration(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    .line 225
    iget-object v3, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    filled-new-array {v3}, [Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    invoke-interface {v3, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 226
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sos_dialog_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mSosDialogLayout:Landroid/widget/RelativeLayout;

    .line 227
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->group_cn_sos_el:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCnSosEl:Landroid/widget/RelativeLayout;

    .line 228
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->group_cn_sos_common_call:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCnSosCommonCall:Landroid/widget/LinearLayout;

    .line 229
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->iv_sos_contact_call_first:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mIvSosContactCallFirst:Landroid/widget/ImageView;

    .line 230
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->iv_sos_contact_call_second:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mIvSosContactCallSecond:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->iv_sos_contact_call_third:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mIvSosContactCallThird:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_sos_contact_name_first:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactNameFirst:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_sos_contact_name_second:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactNameSecond:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_sos_contact_name_third:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactNameThird:Landroid/widget/TextView;

    .line 235
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_sos_contact_phone_first:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactPhoneFirst:Landroid/widget/TextView;

    .line 236
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_sos_contact_phone_second:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactPhoneSecond:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tv_sos_contact_phone_third:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mTvSosContactPhoneThird:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->group_cn_119_call:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCn119Call:Landroid/widget/LinearLayout;

    .line 239
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->group_cn_120_call:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCn120Call:Landroid/widget/LinearLayout;

    .line 240
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->group_cn_110_call:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCn110Call:Landroid/widget/LinearLayout;

    .line 241
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->gp_contact_second:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGpContactSecond:Landroid/widget/RelativeLayout;

    .line 242
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->gp_contact_third:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGpContactThird:Landroid/widget/RelativeLayout;

    .line 243
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->btn_hide_sos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mBtnHideSos:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->sos_dec:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->sos_json_anim:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 246
    sget v2, Lcom/android/settings/R$raw;->sos:I

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 248
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 250
    new-instance v3, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/emergency/ui/SosExitAlertActivity$10;-><init>(Lcom/android/settings/emergency/ui/SosExitAlertActivity;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private synthetic lambda$initViews$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 215
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initDatas()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->initListeners()V

    .line 80
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCnSosEl:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosExitAlertActivity;->mGroupCnSosCommonCall:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
