.class Lcom/android/settings/Autostar/AutoMangement$AppPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "AutoMangement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Autostar/AutoMangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppPreference"
.end annotation


# instance fields
.field fragment:Lcom/android/settings/Autostar/AutoMangement;

.field info:Landroid/content/pm/ApplicationInfo;

.field final synthetic this$0:Lcom/android/settings/Autostar/AutoMangement;


# direct methods
.method public constructor <init>(Lcom/android/settings/Autostar/AutoMangement;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/AutoMangement;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$AppPreference;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    .line 197
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 198
    sget p1, Lcom/android/settings/R$layout;->autorun_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 199
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    iput-object p5, p0, Lcom/android/settings/Autostar/AutoMangement$AppPreference;->fragment:Lcom/android/settings/Autostar/AutoMangement;

    .line 202
    iput-object p6, p0, Lcom/android/settings/Autostar/AutoMangement$AppPreference;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 208
    sget v0, Lcom/android/settings/R$id;->enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 209
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement$AppPreference;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v0, v0, Lcom/android/settings/Autostar/AutoMangement;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p0, p0, Lcom/android/settings/Autostar/AutoMangement$AppPreference;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method
