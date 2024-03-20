.class Lcom/android/settings/Autostar/Autoallow$AppPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "Autoallow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Autostar/Autoallow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppPreference"
.end annotation


# instance fields
.field fragment:Lcom/android/settings/Autostar/Autoallow;

.field info:Landroid/content/pm/ApplicationInfo;

.field t:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/Autostar/Autoallow;

.field v:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/android/settings/Autostar/Autoallow;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/Autostar/Autoallow;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->this$0:Lcom/android/settings/Autostar/Autoallow;

    .line 130
    invoke-direct {p0, p2}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 131
    sget p1, Lcom/android/settings/R$layout;->autorun_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 132
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iput-object p5, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->fragment:Lcom/android/settings/Autostar/Autoallow;

    .line 135
    iput-object p6, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    .line 144
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 145
    sget v0, Lcom/android/settings/R$id;->enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    .line 146
    sget v0, Lcom/android/settings/R$id;->enable_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->t:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->application_item_permission:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->this$0:Lcom/android/settings/Autostar/Autoallow;

    iget-object v1, v1, Lcom/android/settings/Autostar/Autoallow;->ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/Autostar/Autoallow$AppPreference;->v:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
