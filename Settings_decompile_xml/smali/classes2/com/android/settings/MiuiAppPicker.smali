.class public Lcom/android/settings/MiuiAppPicker;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "MiuiAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiAppPicker$AppListAdapter;,
        Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/MiuiAppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/settings/MiuiAppPicker$AppListAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/MiuiAppPicker;)Lcom/android/settings/MiuiAppPicker$AppListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiAppPicker;->mAdapter:Lcom/android/settings/MiuiAppPicker$AppListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsDisplayNameComparator()Ljava/util/Comparator;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/MiuiAppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Lcom/android/settings/MiuiAppPicker$2;

    invoke-direct {v0}, Lcom/android/settings/MiuiAppPicker$2;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiAppPicker;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/android/settings/R$layout;->app_picker:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 33
    sget p1, Lcom/android/settings/R$id;->list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 34
    new-instance v0, Lcom/android/settings/MiuiAppPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiAppPicker$1;-><init>(Lcom/android/settings/MiuiAppPicker;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 46
    new-instance v0, Lcom/android/settings/MiuiAppPicker$AppListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/MiuiAppPicker$AppListAdapter;-><init>(Lcom/android/settings/MiuiAppPicker;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MiuiAppPicker;->mAdapter:Lcom/android/settings/MiuiAppPicker$AppListAdapter;

    .line 47
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiAppPicker;->mAdapter:Lcom/android/settings/MiuiAppPicker$AppListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 62
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    .line 57
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method
