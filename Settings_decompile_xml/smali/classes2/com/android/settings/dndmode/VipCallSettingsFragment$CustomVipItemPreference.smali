.class Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "VipCallSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/VipCallSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomVipItemPreference"
.end annotation


# instance fields
.field private mDeleteBtn:Landroid/widget/ImageView;

.field private mId:J

.field final synthetic this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/dndmode/VipCallSettingsFragment;Landroid/content/Context;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->this$0:Lcom/android/settings/dndmode/VipCallSettingsFragment;

    .line 377
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 378
    sget p1, Lcom/android/settings/R$xml;->dndm_custom_vip_item:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 398
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 400
    sget v0, Lcom/android/settings/R$id;->delete_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 402
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 403
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    iget-wide v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 404
    iget-object p1, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->mDeleteBtn:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference$1;-><init>(Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 382
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/dndmode/VipCallSettingsFragment$CustomVipItemPreference;->mId:J

    const/4 v0, 0x1

    .line 383
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 385
    invoke-static {}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$sfgetmContacts()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/android/settings/dndmode/VipCallSettingsFragment;->-$$Nest$sfgetmContacts()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 391
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
