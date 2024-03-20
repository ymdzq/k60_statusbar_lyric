.class public Lcom/android/settings/privacypassword/FunctionSpecification;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "FunctionSpecification.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFullDown:Landroid/widget/ImageView;

.field private mFunctionSpecificationIcon:Landroid/widget/ImageView;

.field private mFunctionSpecificationView:Landroid/widget/TextView;

.field private mPrivacyPasswordManger:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

.field private mUseImmediate:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private isPkgExsisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 90
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "privacy_password_function_specification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getSpcificationInfos()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    if-eqz p1, :cond_2

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->intentAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    iget-object p1, p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->startPackage:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v1, "fileexplorer"

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    const-string p1, "com.mi.android.globalFileexplorer"

    .line 77
    invoke-direct {p0, p0, p1}, Lcom/android/settings/privacypassword/FunctionSpecification;->isPkgExsisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.android.fileexplorer"

    :cond_1
    :goto_0
    const/high16 v1, 0x10000000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/android/settings/R$layout;->funcion_specification:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 35
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mPrivacyPasswordManger:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 37
    sget p1, Lcom/android/settings/R$id;->function_specific:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mFunctionSpecificationView:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/android/settings/R$id;->use_privacy_password_immediate:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mUseImmediate:Landroid/widget/Button;

    .line 39
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    sget p1, Lcom/android/settings/R$id;->function_specific_icon:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mFunctionSpecificationIcon:Landroid/widget/ImageView;

    .line 41
    sget p1, Lcom/android/settings/R$id;->full_down:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mFullDown:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "privacy_password_function_specification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getSpcificationInfos()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iget v1, p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->actionBarTitle:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mFunctionSpecificationView:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->specificText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mFunctionSpecificationIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->specificImage:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-boolean p1, p1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->isGone:Z

    if-eqz p1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mFullDown:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/privacypassword/FunctionSpecification;->mPrivacyPasswordManger:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
