.class public Lcom/android/settings/emergency/ui/EmergencyContactsActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "EmergencyContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/ui/EmergencyContactsActivity$LoadContactsTask;
    }
.end annotation


# static fields
.field private static final NEED_STORE_DEFAULT:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFirst:Z

.field private loadContactsTask:Lcom/android/settings/emergency/ui/EmergencyContactsActivity$LoadContactsTask;

.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

.field private mCancelIcon:Landroid/graphics/drawable/Drawable;

.field private mContactsListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDoneIcon:Landroid/graphics/drawable/Drawable;

.field private mEditCancel:Landroid/widget/ImageView;

.field private mEditConfirm:Landroid/widget/ImageView;

.field private mMenu:Landroid/view/Menu;

.field private smsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterSmsReceiver(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->registerSmsReceiver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->TAG:Ljava/lang/String;

    .line 83
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->NEED_STORE_DEFAULT:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private loadContacts(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$LoadContactsTask;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$LoadContactsTask;-><init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->loadContactsTask:Lcom/android/settings/emergency/ui/EmergencyContactsActivity$LoadContactsTask;

    .line 173
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    filled-new-array {p1, p2}, [Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method private pickFromAndroidContacts()V
    .locals 2

    .line 474
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "com.google.android.contacts"

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 478
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 480
    sget-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerSmsReceiver()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "DELIVERED_SMS_ACTION0"

    .line 489
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "DELIVERED_SMS_ACTION1"

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "DELIVERED_SMS_ACTION2"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    new-instance v1, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$4;-><init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V

    iput-object v1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    .line 516
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    if-nez p3, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x3e8

    const/4 v1, 0x3

    const-string v2, "data1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v0, :cond_a

    const-string p1, "com.android.contacts.extra.PHONE_URIS"

    .line 258
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 259
    array-length p3, p1

    if-nez p3, :cond_1

    goto/16 :goto_4

    .line 263
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    array-length v0, p1

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_5

    aget-object v6, p1, v5

    .line 265
    check-cast v6, Landroid/net/Uri;

    .line 266
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 267
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/16 v7, 0x2c

    .line 268
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "tel"

    .line 272
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 273
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    :cond_5
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 280
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 280
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_2

    :cond_6
    move-object p1, v3

    :goto_2
    if-eqz p1, :cond_10

    .line 292
    :cond_7
    :goto_3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 293
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 294
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 298
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 299
    throw p0

    :cond_9
    :goto_4
    return-void

    :cond_a
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1c

    .line 303
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_b

    return-void

    .line 309
    :cond_b
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object p3, v3

    if-eqz p1, :cond_e

    .line 312
    :cond_c
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "_id"

    .line 313
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 315
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact_id = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 321
    :cond_d
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_c

    .line 322
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 324
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 326
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, p1

    goto/16 :goto_d

    :cond_e
    if-eqz p1, :cond_f

    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz p3, :cond_10

    .line 339
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p3, v4

    :cond_11
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 348
    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 349
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-nez p3, :cond_11

    .line 351
    sget p3, Lcom/android/settings/R$string;->miui_sos_settings_alert_contacts_repeat:I

    invoke-static {p0, p3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    move p3, v2

    goto :goto_7

    .line 357
    :cond_12
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->getItemCount()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p1, p3

    if-le p1, v1, :cond_13

    .line 358
    sget p1, Lcom/android/settings/R$string;->miui_sos_settings_alert_contacts_too_many:I

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 362
    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    return-void

    .line 366
    :cond_14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 372
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 373
    invoke-static {v0, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 372
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_15

    .line 378
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 379
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$string;->miui_sos_unknow_contract:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 384
    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$string;->miui_sos_unknow_contract:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 390
    :cond_16
    :goto_9
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 393
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :catch_0
    move-exception p3

    goto :goto_a

    :catchall_2
    move-exception p0

    goto :goto_b

    :catch_1
    move-exception p3

    move-object v0, v3

    .line 387
    :goto_a
    :try_start_5
    sget-object v1, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 390
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_8

    :catchall_3
    move-exception p0

    move-object v3, v0

    :goto_b
    invoke-static {v3}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 391
    throw p0

    .line 396
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_18

    return-void

    .line 400
    :cond_18
    iget-object p2, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p2, p1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->addDataItems(Ljava/util/List;)V

    .line 402
    iget-object p2, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p2}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->updateEmergencyContacts()V

    .line 404
    invoke-static {p0, v2}, Lcom/android/settings/emergency/util/Config;->setSosEnable(Landroid/content/Context;Z)V

    .line 406
    invoke-static {}, Lcom/android/settings/emergency/util/CommonUtils;->getCurrentEnableSubInfo()Lmiui/telephony/SubscriptionInfo;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 408
    new-instance p3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->miui_sos_remind_title:I

    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->miui_sos_remind_sendinfo:I

    invoke-virtual {p3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    sget v0, Lcom/android/settings/R$string;->miui_sos_remind_sendnow:I

    new-instance v1, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$1;-><init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;Ljava/util/List;Lmiui/telephony/SubscriptionInfo;)V

    .line 409
    invoke-virtual {p3, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->miui_sos_remind_sendnow_donot_send:I

    .line 424
    invoke-virtual {p0, p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_c

    .line 426
    :cond_19
    sget p1, Lcom/android/settings/R$string;->miui_sos_call_warning_sim_unable:I

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_c
    return-void

    :catchall_4
    move-exception p0

    move-object p3, v3

    :goto_d
    if-eqz v3, :cond_1a

    .line 336
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1a
    if-eqz p3, :cond_1b

    .line 339
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_1b
    throw p0

    :cond_1c
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->getEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 217
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 218
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :catch_0
    iget-object v1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->setEditMode(ZZ)V

    .line 223
    iget-object v1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 224
    iget-object p0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->updateEmergencyContacts()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->getEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p1, v1, v1}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->setEditMode(ZZ)V

    goto :goto_0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    sget-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->NEED_STORE_DEFAULT:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->setEditMode(ZZ)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 242
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 243
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :catch_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    iget-object p0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->updateEmergencyContacts()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 89
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget p1, Lcom/android/settings/R$layout;->emergency_contacts_activity:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const-string/jumbo p1, "uimode"

    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    .line 95
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 96
    :goto_0
    sget v0, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_immersion_done_light:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mDoneIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    sget v0, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_immersion_close_light:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mCancelIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 99
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mDoneIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 104
    :cond_1
    :try_start_0
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    .line 105
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 106
    iget-object v3, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mDoneIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    sget v3, Lcom/android/settings/R$string;->done:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    .line 112
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mCancelIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    sget v0, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 118
    sget-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "first_open"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->isFirst:Z

    .line 121
    new-instance p1, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    .line 122
    sget p1, Lcom/android/settings/R$id;->contacts_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mContactsListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 123
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mContactsListView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    new-instance p1, Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;

    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-direct {p1, v0}, Lcom/android/settings/emergency/ui/view/SimpleItemTouchHelperCallback;-><init>(Lcom/android/settings/emergency/ui/view/ItemTouchHelperAdapter;)V

    .line 127
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mContactsListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->setItemTouchHelper(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 131
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContactNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->loadContacts(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 178
    iput-object p1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mMenu:Landroid/view/Menu;

    const/16 v0, 0x65

    .line 179
    sget v1, Lcom/android/settings/R$string;->miui_sos_menu_edit:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->action_button_edit:I

    .line 180
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 181
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    iget-object p0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mMenu:Landroid/view/Menu;

    sget p1, Lcom/android/settings/R$string;->miui_sos_menu_add:I

    const/16 v1, 0x64

    const/4 v3, 0x1

    invoke-interface {p0, v2, v1, v3, p1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p0

    sget p1, Lcom/android/settings/R$drawable;->action_button_new:I

    .line 183
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p0

    .line 184
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .line 160
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/settings/emergency/util/Config;->setSosEnable(Landroid/content/Context;Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->smsReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->loadContactsTask:Lcom/android/settings/emergency/ui/EmergencyContactsActivity$LoadContactsTask;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 167
    :cond_1
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditCancel:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mEditConfirm:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :catch_0
    iget-object v1, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mAdapter:Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;

    sget-object v3, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->NEED_STORE_DEFAULT:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/emergency/ui/view/ContactsListViewAdapter;->setEditMode(ZZ)V

    .line 205
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->pickFromContacts()V

    return v2
.end method

.method protected onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 148
    invoke-static {p0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->isFirst:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->pickFromContacts()V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->isFirst:Z

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->showAddContactsDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public pickFromContacts()V
    .locals 3

    .line 454
    invoke-static {}, Lcom/android/settings/emergency/util/CommonUtils;->isPreLoadGoogleCsp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->pickFromAndroidContacts()V

    return-void

    .line 459
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.contacts"

    .line 461
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.include_unknown_numbers"

    const/4 v2, 0x1

    .line 463
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.initial_picker_tab"

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.android.contacts.extra.MAX_COUNT"

    const/4 v2, 0x3

    .line 465
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x3e8

    .line 466
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    sget-object v0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showAddContactsDialog()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_title:I

    .line 433
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_open:I

    .line 434
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_add:I

    new-instance v2, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$3;-><init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V

    .line 435
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/EmergencyContactsActivity$2;-><init>(Lcom/android/settings/emergency/ui/EmergencyContactsActivity;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    .line 441
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 447
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 449
    :cond_0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
